import time
from datetime import datetime, timedelta
import requests
from bs4 import BeautifulSoup
import simplejson as json
import random
random.seed(datetime.now().microsecond)

def read_schedule(filename):
    f = open(filename)
    lines = f.readlines()
    f.close()
    timing = {}
    remark = {}
    for i in lines:
        token = i.strip().split('\t')
        start = datetime.strptime(token[0], '%Y-%m-%dT%H:%M:%S')
        end = datetime.strptime(start.strftime('%Y-%m-%dT') + token[1], '%Y-%m-%dT%H:%M:%S')
        timing[start] = end
        remark[start] = token[2]
    return timing, remark

def write_schedule(cat_timing, cat_remark):
    f = open('cat_consultation.tsv', 'w')
    for start, end in cat_timing.items():
        if end > datetime.now():
            f.write(start.strftime('%Y-%m-%dT%H:%M:%S') + '\t' + end.strftime('%H:%M:%S') + '\t' + cat_remark[start] + '\n')
    f.close()

wdays = {'sun': 0, 'mon': 1, 'tue': 2, 'wed': 3, 'thu': 4, 'fri': 5, 'sat': 6}
def interpret_time (text):
    token = text.split()
    if len(token) == 0:
        return [False]
    token = token[0].split('.')
    if len(token) != 2 or token[0] not in wdays or len(token[1]) <= 2 or token[1][-2:] not in ['am', 'pm']:
        return [False]
    else:
        digit_str = token[1][:-2]
        for i in range(len(digit_str)):
            if digit_str[i] < '0' or digit_str[i] > '9':
                return [False]
        minute = 0
        if len(digit_str) > 2:
            if digit_str[-2:] == '00':
                minute = 0
            elif digit_str[-2:] == '30':
                minute = 30
            else:
                return [False]
            digit_str = digit_str[:-2]
        hour = int(digit_str)
        if hour < 1 or hour > 12:
            return [False]
        hour = (hour % 12) + 12 * (token[1][-2:] == 'pm')
    return [True, token[0], hour, minute]

def get_timestamp(wday, hour, minute):
    day_offset = (7 + wdays[wday] - int(datetime.now().strftime('%w'))) % 7
    ts = datetime.now() + timedelta(days = day_offset)
    return ts.replace(hour = hour, minute = minute, second = 0, microsecond = 0)

def try_allocate(wday, hour, minute, sch_timing, cat_timing):
    status = 0 # status 0: able to allocate
    if wday in ['sat', 'sun'] or hour < 8 or hour >= 18:
        status = 2 # status 2: non-office hours
        return [status]
    elif hour < 13 or (hour == 13 and minute == 0) or (hour == 17 and minute == 30):
        status = 1 # status 1: not available
        return [status]
    else:
        ts_start = get_timestamp(wday, hour, minute)
        ts_end = ts_start + timedelta(minutes = 30)
        for i, j in sch_timing.items():
            if ((ts_start - j).total_seconds()) * ((ts_end - i).total_seconds()) < 0:
                status = 1
                return [status]
        for i, j in cat_timing.items():
            if ((ts_start - j).total_seconds()) * ((ts_end - i).total_seconds()) < 0:
                status = 1
                return [status]
    return [status, ts_start, ts_end]

url_update = 'https://api.telegram.org/bot307726211:AAGyctj0Q-K5bUVXoBZhOr2raE76jQptMbc/getUpdates'
update_offset = 0
url_sendmsg = 'https://api.telegram.org/bot307726211:AAGyctj0Q-K5bUVXoBZhOr2raE76jQptMbc/sendMessage'
super_group = -1001101394443

while True:
    time.sleep(5)
    sch_timing, sch_remark = read_schedule('btdai_schedule.tsv')
    cat_timing, cat_remark = read_schedule('cat_consultation.tsv')
    req = requests.post(url_update, data = {'offset': update_offset})
    soup = BeautifulSoup(req.content, 'html.parser')
    update = json.loads(str(soup))
    if not update['ok']:
        print('update not ok:')
        print(str(soup))
        continue
    if len(update['result']) == 0:
        continue
    for each_update in update['result']:
        print(each_update)
        update_offset = each_update['update_id'] + 1
        if 'message' not in each_update:
            continue
        msg = each_update['message']
        if 'text' not in msg:
            continue
        msgtext = msg['text'].lower()
        if msgtext.find('@smucatbot') == 0:
            msgtext = msgtext[10:].strip()
        if msgtext.find('book consultation') == 0:
            result = interpret_time(msgtext[17:])
            if not result[0]:
                req = requests.post(url_sendmsg, data = {'text': 'syntax:\nbook consultation (mon|tue|wed|thu|fri).[1-12](|00|30)(am|pm)\ne.g.\nbook consultation tue.3pm\nbook consultation wed.330pm\nbook consultation thu.4pm', 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
            else:
                status = try_allocate (result[1], result[2], result[3], sch_timing, cat_timing)
                if status[0] == 2:
                    req = requests.post(url_sendmsg, data = {'text': random.choice(("i'm not in office", 'this timing? are you sure?', 'can you choose other timing?')), 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
                elif status[0] == 1:
                    req = requests.post(url_sendmsg, data = {'text': random.choice(("i'm busy with other things", 'the time slot is not available')), 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
                else:
                    cat_timing[status[1]] = status[2]
                    sender = msg['from']
                    cat_remark[status[1]] = ('username' in sender and '@%s; ' % sender['username'] or '') + ('first_name' in sender and '%s' % sender['first_name'] or '') + ('last_name' in sender and ' %s' % sender['last_name'] or '') + '; %d' % sender['id']
                    write_schedule(cat_timing, cat_remark)
                    req = requests.post(url_sendmsg, data = {'text': 'the time slot from ' + status[1].strftime('%H:%M') + ' to ' + status[2].strftime('%H:%M') + ' on ' +  status[1].strftime('%Y-%m-%d') + ' has been confirmed', 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
        elif msgtext.find('cancel consultation') == 0:
            result = interpret_time(msgtext[19:])
            if not result[0]:
                req = requests.post(url_sendmsg, data = {'text': 'syntax:\ncancel consultation (mon|tue|wed|thu|fri).[1-12](|00|30)(am|pm)\ne.g.\ncancel consultation tue.3pm\ncancel consultation wed.330pm\ncancel consultation thu.4pm', 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
            else:
                ts_start = get_timestamp(result[1], result[2], result[3])
                cancelled = False
                if ts_start in cat_timing:
                    book_by = cat_remark[ts_start]
                    if msg['from']['id'] == int(book_by[book_by.rfind(';')+1:].strip()):
                        del cat_timing[ts_start]
                        del cat_remark[ts_start]
                        write_schedule(cat_timing, cat_remark)
                        req = requests.post(url_sendmsg, data = {'text': 'the consultation booking has been cancelled', 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
                        cancelled = True
                if not cancelled:
                    req = requests.post(url_sendmsg, data = {'text': 'You cannot cancel the time slot, the booking does not exist, or it is booked by someone else', 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
        elif msgtext.find('list consultation') == 0:
            msg_from_id = msg['from']['id']
            listed_booking = []
            for ts in cat_timing:
                rm = cat_remark[ts]
                if int(rm[rm.rfind(';')+1:].strip()) == msg_from_id:
                    listed_booking.append('slot %d from ' % (len(listed_booking) + 1) + ts.strftime('%H:%M') + ' to ' + cat_timing[ts].strftime('%H:%M') + ' on ' +  ts.strftime('%Y-%m-%d'))
            if len(listed_booking) == 0:
                listed_booking.append('no booking found')
            req = requests.post(url_sendmsg, data = {'text': '\n'.join(listed_booking), 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
        elif msgtext.find('list all consultation') == 0 and msg['from']['id'] == 353284802:
            listed_booking = []
            for ts in cat_timing:
                rm = cat_remark[ts]
                rm = rm[:rm.rfind(';')].strip()
                if rm.find(';') != -1:
                    rm = rm[rm.find(';')+1:].strip()
                listed_booking.append('slot %d from ' % (len(listed_booking) + 1) + ts.strftime('%H:%M') + ' to ' + cat_timing[ts].strftime('%H:%M') + ' on ' +  ts.strftime('%Y-%m-%d') + ' booked by ' + rm)
            if len(listed_booking) == 0:
                listed_booking.append('no booking found')
            req = requests.post(url_sendmsg, data = {'text': '\n'.join(listed_booking), 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})
        else:
            req = requests.post(url_sendmsg, data = {'text': "i don't understand, please refer to the syntax below:\n(book|cancel|list) consultation (mon|tue|wed|thu|fri).[1-12](|00|30)(am|pm)\ne.g.\nbook consultation tue.3pm\ncancel consultation wed.330pm\nlist consultation (timestamp is not required for 'list consultation')", 'chat_id': msg['chat']['id'], 'reply_to_message_id': msg['message_id']})

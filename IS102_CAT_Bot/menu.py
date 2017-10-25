'''
Created on 10 Jun 2017

@author: jiaqi
'''

import property
import logging
from telegram import *
import threading
import time
import datetime
#InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, ConversationHandler, MessageHandler, Filters
import registration.register

from attendance.updateAttendance import check_attendance_code
from pip.cmdoptions import only_binary

from datetime import datetime
import post_class_summary
from post_class_summary import post_class_s, post_class_summary_db

import consultation.book_consultation
import consultation.check_consultation
import forum_linkage.Post_Question
import forum_linkage.forum_linkage_db

import urllib
import json 
import requests


#from Bot.askQuestion import ask_question
 
logging.basicConfig(format='%(asctime)s - %(name)s - %(levelname)s - %(message)s',
                    level=logging.INFO)

logger = logging.getLogger(__name__)


def filter(bot, update, args):
    if len(args) == 0:
        registration.register.register(bot,update)
    else:
        start(bot, update)



def start(bot, update):
    #for single_update in update["result"]:
    try:
        text = update["message"]["text"]
        chat = update["message"]["chat"]["id"]
        
        # the above is the parse the information from the json feedback
        # the text is the received text
        if check_attendance_code(chat,text):  
            
            update.message.reply_text("attendance taken")
        else:
            update.message.reply_text("Wrong attendance code")
            #print("attendance result is not passed")
    except Exception as e:
            print(e)
    


def home(bot, update):
    keyboard = [[InlineKeyboardButton("Post Class Summary", callback_data='Post Class Summary'),
                 InlineKeyboardButton("Consultation", callback_data='consultation')],
                [InlineKeyboardButton("My Profile", callback_data='My Profile'),
                 InlineKeyboardButton("Post to Forum", callback_data='Post to Forum')]]

    reply_markup = InlineKeyboardMarkup(keyboard)

    update.message.reply_text('Please choose:', reply_markup=reply_markup)
    
    
    
def consultation_button(bot, update):
    keyboard = [[InlineKeyboardButton("Book Consultation", callback_data='BookConsultation'),
                 InlineKeyboardButton("Check My Consultation", callback_data='CheckConsultation')]]
    reply_markup = InlineKeyboardMarkup(keyboard)
    update.callback_query.message.reply_text('Please choose:', reply_markup=reply_markup)



def dispaly_consultation_button(bot, update):
    consultation_button(bot, update)



"""This method the"""
def validate(query_data_text):
    try:
        start_dateTime = query_data_text.split('     to     ',1)[0]
        end_dateTime = query_data_text.split('     to     ',1)[1]
        #print (start_dateTime+"  "+end_dateTime)
    except IndexError:
        return False
    
    try:
        start_dateTime_obj = datetime.strptime(start_dateTime, '%m/%d/%y - %I:%M %p')
        end_dateTime_obj = datetime.strptime(end_dateTime,'%m/%d/%y - %I:%M %p')
        return True
    except ValueError:
        return False



def button(bot, update):
    # what is the data type of this query  
    query = update.callback_query
    
    # if the register button is pressed by user
    if query.data == 'register' :
        registration.register.press_register(bot, update)
    elif query.data == 'Post to Forum':
        #send out start message.
        forum_linkage.Post_Question.startMsg(bot, update)
        
    elif query.data == "consultation":
        dispaly_consultation_button(bot, update)
        #consultation_button(bot, update)
    elif query.data == 'BookConsultation':
        consultation.book_consultation.display_timeslot(bot, update)
    elif validate(query.data):
        consultation.book_consultation.finish_booking(bot, update) 
    elif query.data == 'CheckConsultation':
        consultation.check_consultation.display_consultation_bookings(bot, update)
    elif query.data == 'Post Class Summary':
        #create status dictionary.
        status = post_class_summary.post_class_s.create_status_dic(bot,update)
        #Iterate status dictionary to reset function.
        for key in status:
            if key == len(status)-1:
                status[key] = [MessageHandler(Filters.text, post_class_summary.post_class_s.update_week)]               
            else: 
                status[key] = [MessageHandler(Filters.text, post_class_summary.post_class_s.receive_answer_send_rest_questions)]

        #create converstionHandler.
        global post_class_conv_handler
        dp.remove_handler(post_class_conv_handler)
        post_class_conv_handler = ConversationHandler(
            entry_points=[CommandHandler('Go', post_class_summary.post_class_s.post_class_summary)],
            
            states = status,
                                    
            fallbacks=[CommandHandler('cancel', cancel)],
            
            per_chat = True,
            
            per_user = True
                                                            
            )    
        dp.add_handler(post_class_conv_handler)
        #print(post_class_conv_handler)
        bot.edit_message_text(text="Hi! I will help you to record your class participation.\n\nClick on this if you are ready: /Go",
                              chat_id=query.message.chat_id,
                              message_id=query.message.message_id)                            
    else: 
                 
        bot.edit_message_text(text="Selected option: %s" % query.data,
                              chat_id=query.message.chat_id,
                              message_id=query.message.message_id)  
        
        print("you selected" + query.data)
           
        # streamline to respective functions
        print(query.message.message_id)
    


def cancel(bot, update):
    user = update.message.from_user
    logger.info("User %s canceled the conversation." % user.first_name)
    update.message.reply_text('Bye! You have stopped the current submission. \n\nTo resubmit, click on /home',
                              reply_markup=ReplyKeyboardRemove())

    return ConversationHandler.END



def help(bot, update):
    update.message.reply_text("""I can help you take attendance, view questions in forum, book consultation as well as record down your class participation.
\nUse /home command to display home buttons
\nIf you have any questions or suggestions, please feel free to contact us at: catbot102ise@gmail.com""")



def error(bot, update, error):
    logging.warning('Update "%s" caused error "%s"' % (update, error))

TOKEN = "429775448:AAEb0qgYBV9s797I9c9_2e5qFIasucpV7Ao"
URL = "https://api.telegram.org/bot{}/".format(TOKEN)


def send_message(text, chat_id):
    text = urllib.parse.quote_plus(text)
    url = URL + "sendMessage?text={}&chat_id={}&parse_mode=Markdown".format(text, chat_id)
    get_url(url)


def get_url(url):
    response = requests.get(url)
    content = response.content.decode("utf8")
    return content
 
 
def non_daemon():
 
    timepassed = 0
    post_id = 104
    while True:
        #comment out the following two lines
#         print(str(datetime.now()))
#         print("getting updates after "+ str(timepassed) + " time")
       
        #below code will try to pull the latest question post from the web forum
        #pull a new post from forum:
        new_post = forum_linkage.forum_linkage_db.pull_latest_post(post_id) #new_post is of data type tuple.
        print (new_post)
        if new_post is not None: #there is a new post.
            post_id = new_post[0]
            parent_id = new_post[1]
            post_title = new_post[2]
            post_content = new_post[3]
            print (post_title + post_content)
            if post_content != "empty":
                if parent_id == 0: # It is a new post.
                    #retrieve post tag:
                    tag_tuple = forum_linkage.forum_linkage_db.retrieve_tag(post_id)    
                    tag = tag_tuple[0]
                    print (tag)                    
                    message_str = 'Hey~ There is a *new question* posted in forum:\n\n*Post Title:*  `%s`\n*Post Tag:*  `%s`\n*Post Content:*  `%s`'%(post_title,tag, post_content)
                    send_message(message_str, -291022809)
                else:
                    #retrieve parent post title
                    parent_post_title_tuple = forum_linkage.forum_linkage_db.retrieve_parent_post_title(parent_id)
                    parent_post_title = parent_post_title_tuple[0]
                    message_str = 'Hey~ There is a *reply* to question:\n`\"%s\"` \n\n*Reply Content:*  `%s`'%(parent_post_title,post_content)                    
                    send_message(message_str, -291022809)
                post_id +=1
        #print(post_id)
        time.sleep(0.5)
        timepassed += 1
    # write a piece of code that can pull the updates and call messaging 
t = threading.Thread(name='non-daemon', target=non_daemon)
t.start()






# Create the Updater and pass it your bot's token.
updater = Updater(TOKEN)

dp = updater.dispatcher

#create commandhandlers.
#new!

dp.add_handler(CommandHandler('home', home))

dp.add_handler(CallbackQueryHandler(button))
# package.module.function

dp.add_handler(CommandHandler('start', filter, pass_args=True))
dp.add_handler(CommandHandler('email', registration.register.smu_email_input, pass_args=True))
dp.add_handler(CommandHandler('code', registration.register.verify_veri_code, pass_args=True))
dp.add_handler(CommandHandler('gid', registration.register.group_id, pass_args=True))
dp.add_handler(CommandHandler('pwd',registration.register.web_password, pass_args=True))  

dp.add_handler(CommandHandler('ta', start))
#updater.dispatcher.add_handler(CommandHandler('AskQuestion', ask_question, pass_args = True))


#def create_conversationHandler(status_para):
    
post_class_conv_handler = ConversationHandler(
    entry_points=[CommandHandler('Go', post_class_summary.post_class_s.post_class_summary)],
       
    states = {},
                               
    fallbacks=[CommandHandler('cancel', cancel)],
       
    per_chat = True,
       
    per_user = True
                                                       
    )

#create conversation handler:
Post_To_Forum_Handler = ConversationHandler(
    entry_points=[CommandHandler('Post', forum_linkage.Post_Question.ask_for_title)],
    
    states = {
        0: [MessageHandler(Filters.text, forum_linkage.Post_Question.store_title_ask_for_tag)],

        1: [MessageHandler(Filters.text, forum_linkage.Post_Question.ask_for_content)], 

        2: [MessageHandler(Filters.text, forum_linkage.Post_Question.update_post_content)] 

        },
                            
    fallbacks=[CommandHandler('cancel', cancel)],
    
    per_chat = True,
    
    per_user = True
                                                
)

dp.add_handler(Post_To_Forum_Handler)
dp.add_handler(post_class_conv_handler)    
dp.add_handler(CommandHandler('help', help))
dp.add_error_handler(error)

# Start the Bot
updater.start_polling()

# Run the bot until the user presses Ctrl-C or the process receives SIGINT,
# SIGTERM or SIGABRT
updater.idle()


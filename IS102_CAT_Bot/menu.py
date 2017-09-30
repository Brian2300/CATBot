'''
Created on 10 Jun 2017

@author: jiaqi
'''

import property
import logging
from telegram import *
# import threading
# import time
import datetime
#InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler, ConversationHandler, MessageHandler, Filters
import registration.register

from attendance.updateAttendance import check_attendance_code
from pip.cmdoptions import only_binary

#import pullpost.pullPost
# import urllib
# import json 
# import requests

from datetime import datetime
import post_class_summary
from post_class_summary import post_class_s, post_class_summary_db

import consultation.book_consultation
import consultation.check_consultation



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
    keyboard = [[InlineKeyboardButton("Post Class Summary", callback_data='Post Class Summary')],
                [InlineKeyboardButton("Consultation", callback_data='consultation')],
                [InlineKeyboardButton("My Profile", callback_data='My Profile')]]

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



# def update_conversationHandler(status_para):
#     post_class_conv_handler = ConversationHandler(
#         entry_points=[CommandHandler('Go', post_class_summary.post_class_s.post_class_summary)],
#         
#         states = status_para,
#                                 
#         fallbacks=[CommandHandler('cancel', cancel)],
#         
#         per_chat = True,
#         
#         per_user = True
#                                                         
#         )    
#     dp.add_handler(post_class_conv_handler)
    


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


# TOKEN = "392616716:AAGBjxAMrBF6iNB8YwL3dDqP-LrB82HOjhc"
# URL = "https://api.telegram.org/bot{}/".format(TOKEN)
# 
# def send_message(text, chat_id):
#     text = urllib.parse.quote_plus(text)
#     url = URL + "sendMessage?text={}&chat_id={}".format(text, chat_id)
#     get_url(url)
# def get_url(url):
#     response = requests.get(url)
#     content = response.content.decode("utf8")
#     return content


# def non_daemon():
# 
#     timepassed = 0
#     post_id = 6
#     while True:
#         #comment out the following two lines
#         print(str(datetime.now()))
#         print("getting updates after "+ str(timepassed) + " time")
#         #below code will try to pull the latest question post from the web forum
#         new_post = pullpost.pullPost.pull_latest_post(post_id)  #new_topic is Tuple
#         #print (new_post)
#         
#         if len(new_post) > 0:   #if there is a new post
#             latest_topic_id_tuple = pullpost.pullPost.pull_latest_topic()
#             topic_first_post_id = pullpost.pullPost.fisrt_post_id(latest_topic_id_tuple[0][0]) 
# 
#             #print (latest_topic_id_tuple) 
#             if new_post[0][0] < latest_topic_id_tuple[0][0]: #if the topic id is smaller than the maximum of all the topic ids.it is a reply to a post
#                 # retrieve the topic to send to.
#                 topic_title_tuple = pullpost.pullPost.topic_title(new_post[0][0])
#                 #print(topic_title_tuple)
#                 
#                 #send message with topic
#                 send_message("Hey~ There is a reply to the question: \""+str(topic_title_tuple[0][0])+"\"", -243926465)
#                 
#                 new_post_text_str = new_post[0][2]
#                 #remove html
#                 text1 = new_post_text_str.split(">",1)[1]
#                 text2 = text1.split("<",1)[0]         
#                 # send text.
#                 send_message("The reply post is as below: \n\n\""+str(text2)+"\"", -243926465)
#             elif new_post[0][0] == latest_topic_id_tuple[0][0] and post_id == topic_first_post_id[0][0]:
#                 
#                 #send message with topic
#                 send_message("Hey~ There is a new question posted in forum with topic: \""+str(new_post[0][1])+"\"", -243926465) 
#                 
#                 new_post_text_str = new_post[0][2]
#                 #remove html
#                 text1 = new_post_text_str.split(">",1)[1]
#                 text2 = text1.split("<",1)[0]         
#                 # send text.
#                 send_message("The question content is as below: \n\n\""+str(text2)+"\"", -243926465)                               
#                 
#             elif new_post[0][0] == latest_topic_id_tuple[0][0] and post_id != topic_first_post_id[0][0]: #if the topic id is equal to the maximum topic id and post id != first post id
#                 
#                 #send message with topic
#                 send_message("Hey~ There is a reply to the question: \""+str(new_post[0][1])+"\"", -243926465)
#                 
#                 new_post_text_str = new_post[0][2]
#                 #remove html
#                 text1 = new_post_text_str.split(">",1)[1]
#                 text2 = text1.split("<",1)[0]         
#                 # send text.
#                 send_message("The reply post is as below: \n\n\""+str(text2)+"\"", -243926465)                  
#         
#             post_id +=1
#         #print(post_id)
#         time.sleep(0.5)
#         timepassed += 1
#     # write a piece of code that can pull the updates and call messaging 
# t = threading.Thread(name='non-daemon', target=non_daemon)
# t.start()






# Create the Updater and pass it your bot's token.
updater = Updater("429775448:AAEb0qgYBV9s797I9c9_2e5qFIasucpV7Ao")

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
 
dp.add_handler(post_class_conv_handler)    
dp.add_handler(CommandHandler('help', help))
dp.add_error_handler(error)

# Start the Bot
updater.start_polling()

# Run the bot until the user presses Ctrl-C or the process receives SIGINT,
# SIGTERM or SIGABRT
updater.idle()


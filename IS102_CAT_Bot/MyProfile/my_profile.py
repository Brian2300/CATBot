'''
Created on 14 Nov 2017

@author: jiaqi
'''

#attendance
#post class summary marks
#number of post by the user in forum.

import logging
from telegram import *
import telegram

from MyProfile import my_profile_db

def display_profile(bot, update):
    #chat_id
    query = update.callback_query
    chat_id = query.message.chat_id  
    
    #attendance
    stu_id = my_profile_db.retrieve_stu_id(chat_id)
    presences_num = my_profile_db.retrieve_presence_num(stu_id)
    print (presences_num)
    total_week = 12
    attendance_ratio = str(presences_num[0]) + "/" + str(total_week)
    
    #post class summary marks
    ave_stu_mark = my_profile_db.retrieve_post_summary_marks(stu_id)
    
    # posts & qa coins
    avatar_id = my_profile_db.retrieve_avatar_id_stu(chat_id) 
    num_questions = my_profile_db.retrieve_questions(avatar_id)
    num_replys = my_profile_db.retrieve_replys(avatar_id)
    total_qa_coints = my_profile_db.retrieve_qacoins(chat_id) 
    
    # avatar_name 
    avatar_name = my_profile_db.retrieve_avatar_name_stu(avatar_id)
    

    bot.send_message(chat_id=chat_id, 
    text="Your profile is listed below: \n\n *Avatar name*:  `%s` \n\n *Attendance*:  `%s` \n *Post Class Summary Average Mark*:  `%s` \n\n *Number of questions posted*:  `%s` \n *Number of questions answered*:  `%s` \n *QA Coins*:  `%s`" % (avatar_name[0], attendance_ratio,ave_stu_mark[0], num_questions[0],num_replys[0],total_qa_coints[0]),
    parse_mode=telegram.ParseMode.MARKDOWN)   
    
    
    
    
    
    
    
    
    
    
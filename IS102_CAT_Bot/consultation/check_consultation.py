'''
Created on 28 Sep 2017

@author: jiaqi
'''

from telegram.ext import MessageHandler, Filters, ConversationHandler
from telegram import *
import telegram

from consultation import consultation_db
import consultation
from datetime import datetime


"""This method displays the consultation bookings status"""
def display_consultation_bookings(bot, update):
    #chat_id
    query = update.callback_query
    chat_id = query.message.chat_id
    
    #retrieve smu_email of the student using chat_id from 'student' table.
    student_email = consultation_db.retrieve_smu_email(chat_id)       
        
    #retrieve the students' approved consultation slots.
    approved_slots = consultation_db.approved_slots(student_email)
    #print(approved_slots)      
    approved_new_list = create_formated_slot_list(approved_slots)
    #print(approved_new_list) 
    approved_text = prepare_text_to_send('approved',approved_new_list)
    
    #retrieve the students' pending consultation slots.
    pending_slots = consultation_db.pending_slots(student_email) 
    #print(pending_slots)
    pending_new_list = create_formated_slot_list(pending_slots)
    #print(pending_new_list)
    pending_text = prepare_text_to_send('pending',pending_new_list)
    
    
    #retrieve the students' rejected consultation slots.
    reject_slots = consultation_db.rejected_slots(student_email)
    #print(reject_slots)
    reject_new_list = create_formated_slot_list(reject_slots)
    #print(reject_new_list)  
    reject_text = prepare_text_to_send('rejected',reject_new_list)
    
    combined_text_to_send = approved_text +'\n\n'+ pending_text + '\n\n' + reject_text
    
   
    #send message.
    bot.send_message(chat_id=chat_id,   
    text=combined_text_to_send,
    parse_mode=telegram.ParseMode.MARKDOWN)      



"""This method form a new formated slot list using the Tuple retrieved from database."""
def create_formated_slot_list(status_slots):

    new_formated_list = []
    
    for i in range(len(status_slots)):
        #for every timeslot.
        slot_i = status_slots[i] 
        formated_slot_str = ''
        for j in range(len(slot_i)):
            datetime_obj = datetime.strptime(slot_i[j],'%Y-%m-%d %H:%M:%S')
            new_datetime_str = datetime_obj.strftime('%m/%d/%y - %I:%M %p')
            if j == 0:
                formated_slot_str += new_datetime_str
            else:
                formated_slot_str +='     to     '+new_datetime_str            
        new_formated_list.append(formated_slot_str)
        
    return new_formated_list



"""This method prepares the text to send."""    
def prepare_text_to_send(status,status_new_list):
    if status == 'approved':
        text_to_send = 'Your upcoming *%s* consultation slots: \n'%(status)
    else:
        text_to_send = 'Your *%s* consultation slots: \n'%(status)
    
    for i in range(len(status_new_list)):
        text_to_send += '\n`%s`'%(status_new_list[i])    
        
    return text_to_send

    
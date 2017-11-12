'''
Created on 20 Sep 2017

@author: jiaqi
'''

from telegram.ext import MessageHandler, Filters, ConversationHandler
from telegram import *
from datetime import datetime

from consultation import consultation_db
import telegram


"""This method displays the available time_slot for the student of his/her professor"""
def display_timeslot(bot, update):
    #chat_id
    query = update.callback_query
    chat_id = query.message.chat_id    
    #print (chat_id)
    #retrieve group_id using chat_id from "student" table
    gid = consultation_db.retrieve_gid(chat_id) # returned gid is of datatype Tuple.
    #print (gid)
    #retrieve avatar_id using group_id from "professor_section"
    avatar_id = consultation_db.retrieve_avatar_id(gid) # returned avatar_id is of datatype Tuple.
    #print (avatar_id)
    #retrieve smu_email using avatar_id from "professor"
    prof_email = consultation_db.retrieve_prof_email(avatar_id) # returned prof_email is of datatype Tuple.
    #print (prof_email)
    #retrieve timeslot using prof_email from `consultationtimeslot` table
    ava_timeslots = consultation_db.available_timeslot(prof_email) # returned ava_timeslots is of datatype Tuple.
    #print (ava_timeslots)
    
    #prepare time slot button list(from tuple to list).
    #print (len(ava_timeslots))
    ava_rej_slots_to_display = []
    ava_timeslot_list = list(ava_timeslots)
    for i in range(len(ava_timeslot_list)):
        ava_timeslot_list[i] = list(ava_timeslot_list[i])
        #check status for each of the timeslots.
        slot_status_tuple = consultation_db.retrieve_slot_status(prof_email,ava_timeslot_list[i])
        print (slot_status_tuple)
        display = True
        if slot_status_tuple is not None:
            for j in range(len(slot_status_tuple)):
                if slot_status_tuple[j][0] == "pending" or slot_status_tuple[j][0] == "approve":
                    display = False
        else:
            display = True
            
        if display:
            ava_rej_slots_to_display.append(list(ava_timeslot_list[i]))
                                            
        
    #print(ava_timeslot_list) 
    
    #button list:
    keyboard = []
    
    #format the timeslots.
    for i in range(len(ava_rej_slots_to_display)):
        #for every timeslot (with start_time and end_time)
        new_list = ava_rej_slots_to_display[i]
        one_slot_button = ''
        
        for j in range(len(new_list)):
            datetime_obj = datetime.strptime(new_list[j],'%Y-%m-%d %H:%M:%S') ## convert string into datetime type
            #print (datetime_obj)
            new_date_string = datetime_obj.strftime('%m/%d/%y - %I:%M %p')## convert datetime into a formatted string.
            #print (new_date_string)
            if j == 0:
                one_slot_button += new_date_string
            else:
                one_slot_button += '     to     '+new_date_string  # 5 empty spaces.
            
        keyboard_row1 = [InlineKeyboardButton(one_slot_button, callback_data=one_slot_button)] #######!!!!!!!!!!callback date may need to be changed for insertion purpose.
        keyboard.append(keyboard_row1)
    
    reply_markup = InlineKeyboardMarkup(keyboard)
    update.callback_query.message.reply_text('Please choose a consultation slot:', reply_markup=reply_markup)



"""This method reformat the datetime and finishes the insertion. runs after the user click on a slot button."""
def finish_booking(bot, update):
    #get the button data.
    query = update.callback_query
    timeslot_str = query.data
    #reformat the datetime to the original format of e.g. '2017-10-21 20:12:32'
    start_str_before = timeslot_str.split('     to     ',1)[0]
    end_str_before = timeslot_str.split('     to     ',1)[1]
    
    start_obj_before = datetime.strptime(start_str_before,'%m/%d/%y - %I:%M %p')
    end_obj_before = datetime.strptime(end_str_before,'%m/%d/%y - %I:%M %p')
    #formatted string ready to insert.
    start_str_after = start_obj_before.strftime('%Y-%m-%d %H:%M:%S')
    end_str_after = end_obj_before.strftime('%Y-%m-%d %H:%M:%S')
    #print (start_str_after)
    #print (end_str_after)
    
    #retrieve other data to insert.
    #chat_id
    query = update.callback_query
    chat_id = query.message.chat_id    
    #retrieve group_id and smu_email from 'student' table.
    gid_email = consultation_db.retrieve_gid_smu_email(chat_id) # 
    #print (gid_email)
    #retrieve avatar_id using group_id from "professor_section" table
    avatar_id = consultation_db.retrieve_avatar_id(gid_email[0]) #
    #retrieve smu_email using avatar_id from "professor" table
    prof_email = consultation_db.retrieve_prof_email(avatar_id)
    #retrieve title of the slot using smu_email, start_datetime and end_datetime from `consultationtimeslot` table
    title = consultation_db.retrieve_title(prof_email, start_str_after, end_str_after) 
    #print (title)
    
    #if the student already booked the slots before don't allow
    status = consultation_db.check_booking(prof_email, gid_email[1],start_str_after, end_str_after) 

    if status is not None:
        if status[0] == 'pending':
            bot.send_message(chat_id=chat_id,  
            text="Hi! You have already booked the below consultation slot: \n\n*%s* to *%s* \n\nPlease wait for professor's confirmation"% (start_str_before,end_str_before),
            parse_mode=telegram.ParseMode.MARKDOWN)     
        elif status[0] == 'approve':
            bot.send_message(chat_id=chat_id,  
            text="Hi! Your booking for the below consultation slot has already approved by professor: \n\n*%s* to *%s* "% (start_str_before,end_str_before),
            parse_mode=telegram.ParseMode.MARKDOWN)  
        else:
            bot.send_message(chat_id=chat_id,  
            text="Sorry, your booking for the below consultation slot has already rejected by professor: \n\n*%s* to *%s* "% (start_str_before,end_str_before),
            parse_mode=telegram.ParseMode.MARKDOWN)           
    else:

        #insert into `student_consultationtimeslot`
        consultation_db.insert_chosen_timslot(prof_email, gid_email[1], title, start_str_after, end_str_after)
     
      
        bot.send_message(chat_id=chat_id, 
        text="Hi! you have booked the below consultation slot: \n\n*%s* to *%s* \n\nAn email will be sent to you after professor's confirmation. \nYou can also check your consultation slot status by pressing \n`Check My Consultation` button"% (start_str_before,end_str_before),
        parse_mode=telegram.ParseMode.MARKDOWN)
    
    
    
    
    
    
    
    
    
    
   
    
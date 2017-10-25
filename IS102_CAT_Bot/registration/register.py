'''
Created on 6 Jul 2017

@author: jiaqi
'''

import logging
from telegram import *
#InlineKeyboardButton, InlineKeyboardMarkup
from telegram.ext import Updater, CommandHandler, CallbackQueryHandler
import telegram

import smtplib
from  email.mime.multipart import MIMEMultipart
from  email.mime.text import MIMEText

import random,string

import registration.verifyRegistration

import hashlib

import property


'''This method check registration status and displays register button'''   
def register(bot, update):
    #chat_id
    chat_id = update.message.chat.id
    #If the user has already registered. 
    # chat_id is in the database and the length of smu_email is greater than 5.
    row_num = registration.verifyRegistration.check_registration_chat_id(chat_id) #row_num is of data type Tuple
    smu_email_id_dbValue = registration.verifyRegistration.check_registration_smu_email_id(chat_id) #smu_email_id_dbValue is of data type Tuple
    
    if row_num[0] != 0 and len(smu_email_id_dbValue[0]) > 5 :#if it is a registered user.
        update.message.reply_text('Welcome back! I recognized that you are a registered user:) \nUse /help to see what I can do for you.')
    else:
        #create button object
        keyboard = [[InlineKeyboardButton("register", callback_data='register')]]
        #reply_mark_up
        reply_markup = InlineKeyboardMarkup(keyboard)   
        #update is the command user typed in "/start" in this case.
        #reply to message--'/start'
        update.message.reply_text('Welcome to CAT! Please register with me:', reply_markup=reply_markup)



'''This method will be executed after the user press the register button.'''
def press_register(bot, update):

    query = update.callback_query
    
    bot.edit_message_text(text="Alright! Key in your smu email address and use the below format: \n\n/email [Your smu email address] \n\nFor example: \n/email is102_cat@sis.smu.edu.sg",
                          chat_id=query.message.chat_id,
                          message_id=query.message.message_id)



'''This method runs after the user input their smu_email'''
def smu_email_input(bot, update, args):
    #there must be something after the "/email" command.
    if len(args) != 0:
        text = args[0] #text is the email address.
        #chat_id
        chat_id = update.message.chat.id
        tele_username = update.message.chat.username
        
        #The string after "/email" command must contain 'smu.edu.sg'
        if 'smu.edu.sg' in text:
            # The email address user entered cannot exist in database.
            db_tsmu_email_address_row = registration.verifyRegistration.check_smu_email_address_existance(text)  #db_tsmu_email_address_row is of data type Tuple.
            if db_tsmu_email_address_row[0] == 0:
                #The chat_id cannot exits in database.
                db_num_chat_id = registration.verifyRegistration.retrieve_num_chat_id(chat_id)
                if db_num_chat_id[0] == 0:
                    #generate verification code for this update
                    veri_code = generate_verification_code()
                    #store into database chat_id, verification code and temp smu email address.
                    registration.verifyRegistration.first_insert(chat_id,tele_username,veri_code,text)
                    #send email
                    send_email(text,veri_code)
                    update.message.reply_text('An email is sent to you! Please follow the instruction within the email to continue with the registration. \n\nIf you did not receive the email, retry:\n/email [Your smu email address] \n\nAnd make sure you entered your email address correctly.')
                else:
                    #delete the entry
                    registration.verifyRegistration.delete_duplicate_chat_id(chat_id)
                    #generate verification code for this update
                    veri_code = generate_verification_code()                   
                    #store into database chat_id, verification code and temp smu email address.
                    registration.verifyRegistration.first_insert(chat_id,tele_username,veri_code,text)
                    #send email
                    send_email(text,veri_code)
                    update.message.reply_text('An email is sent to you! Please follow the instruction within the email to continue with the registration. \n\nIf you did not receive the email, retry:\n/email [Your smu email address]')                    
            else:
                update.message.reply_text('An email has already sent to you! Please follow the instruction within the email to continue with the registration.')
        else:
            update.message.reply_text('Wrong input!!  Please enter your SMU email address.')
    else:
        update.message.reply_text('Wrong input!! Please use the correct format.')



def send_email(text,veri_code):
    #send email
    fromaddr = "is102.register@gmail.com"
    toaddr = text
    
    msg = MIMEMultipart()
    
    msg['From'] = fromaddr
    msg['To'] = toaddr
    msg['Subject'] = "Welcome to CAT class! Please verify your email address."
    
    body = """Hi! Help us record your account by verifying your email address.
    
Please enter the below line to the telegram chat with CAT bot! 
    
/code %s
    
If you didn't perform registration with CAT bot, please kindly ignore this email.
    
Regards,
CAT_BOT""" % veri_code                

    
    msg.attach(MIMEText(body, 'plain'))
    
    server = smtplib.SMTP('smtp.gmail.com', 587)
    server.starttls()
    server.login(fromaddr, "IS102CATisefyp!")
    text = msg.as_string()
    server.sendmail(fromaddr, toaddr, text)
    server.quit()    




'''This method is to randomly generate verification code(a string with 6 lowercase letters) for each of the user.'''
def generate_verification_code():
    return ''.join(random.choice(string.ascii_lowercase) for i in range(6))



"""This method runs after the user input veri_code in telegram"""
def verify_veri_code(bot, update, args):
    # args variable is of data type List. It is a list of strings.
    # retrieve user's chat_id from update.
    chat_id = update.message.chat.id
    #retrieve user's chat_id and veri_code from database.
    db_veri_code = registration.verifyRegistration.retrieve_first_insert(chat_id) # db_veri_code is of data type Tuple.
    #If the code entered by user is the same with the code previously generated.
    if len(args) !=0:

        if args[0] == db_veri_code[0]:
            #store into database smu_email
            registration.verifyRegistration.insert_smu_email(chat_id)
            update.message.reply_text('Ok~ Please let me know your group id. Make sure you use the format below:\n\n/gid [Your Group id]\n\nFor example: \n/gid G10')
        else:
            update.message.reply_text('Oops! Something is wrong. Please make sure your input matches the code I sent you.')
    else:
        update.message.reply_text('Wrong input!! Please use the correct format.')
        
        
      
"""This method runs after the user input their group_id"""
def group_id(bot, update, args):
    # retrieve user's chat_id from update.
    chat_id = update.message.chat.id
    
    if len(args) !=0:        
        #there is no space within gid.
        if len(args) == 1:
            #check letter correction.
            if args[0][0] == "G" or args[0][0] == "g":
                #number within maximum section.
                #if total length of string is 2.(e.g G1, G2)
                if len(args[0]) == 2:
                    group_num = int(args[0][1])
                    if group_num <= property.Maximum_section_num:
                        registration.verifyRegistration.insert_group_id(chat_id, args[0].upper())
                        # assign avatar_name for the student.
                        assigned_name = assign_avatar_name(chat_id)
                        if assigned_name is not None:
                            update.message.reply_text('Okay, I get your group id!')
                            bot.send_message(chat_id=chat_id, 
                                text="And I have created an avatar name for you to login to CAT website. \n\n*Avatar Name*:  *%s* " % assigned_name,
                                parse_mode=telegram.ParseMode.MARKDOWN)
                            #update.message.reply_text("And I have created a username for you to login to CAT forum. \n\n*username*: *%s* " % assigned_name )
                            update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')
                        else:
                            update.message.reply_text('Okay, I get your group id!')
                            update.message.reply_text('Sorry! We are running out of avatar names to assign to you, the avatar name is for you to login to CAT website.Let professor know and continue with the registration.')
                            update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')                
                    else:
                        update.message.reply_text('Wrong input!! The section is not a valid section. Please enter again.')
                elif len(args[0]) == 3:  #G10
                    try: 
                        group_num_big_str = args[0][1]+args[0][2]
                        group_num_big = int(group_num_big_str)
                        if group_num_big <= property.Maximum_section_num:
                            registration.verifyRegistration.insert_group_id(chat_id, args[0].upper())
                            # assign avatar_name for the student.
                            assigned_name = assign_avatar_name(chat_id)
                            if assigned_name is not None:
                                update.message.reply_text('Okay, I get your group id!')
                                bot.send_message(chat_id=chat_id, 
                                    text="And I have created an avatar name for you to login to CAT website. \n\n*Avatar Name*:  *%s* " % assigned_name,
                                    parse_mode=telegram.ParseMode.MARKDOWN)
                                #update.message.reply_text("And I have created a username for you to login to CAT forum. \n\n*username*: *%s* " % assigned_name )
                                update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')
                            else:
                                update.message.reply_text('Okay, I get your group id!')
                                update.message.reply_text('Sorry! We are running out of avatar names to assign to you, the avatar name is for you to login to CAT website.Let professor know and continue with the registration.')
                                update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')                
                        else:
                            update.message.reply_text('Wrong input!! The section is not a valid section. Please enter again.')
                    except ValueError :
                        update.message.reply_text('Wrong input!! The section is not a valid section. Please enter again.')
                else:    
                    update.message.reply_text('Wrong input!! The section is not a valid section. Please enter again.')                   
            else:
                update.message.reply_text('Wrong input!! Your group_id needs to start with a "G" or "g". Please enter again.') 
        
        elif len(args) == 2:
            if args[0] == "G" or args[0] == "g":
                group_num = int(args[1])
                if group_num <= property.Maximum_section_num:
                    groupid = args[0]+args[1]
                    registration.verifyRegistration.insert_group_id(chat_id, groupid.upper())
                    # assign avatar_name for the student.
                    assigned_name = assign_avatar_name(chat_id)
                    if assigned_name is not None:
                        update.message.reply_text('Okay, I get your group id!')
                        bot.send_message(chat_id=chat_id, 
                            text="And I have created an avatar name for you to login to CAT website. \n\n*Avatar Name*:  *%s* " % assigned_name,
                            parse_mode=telegram.ParseMode.MARKDOWN)
                        #update.message.reply_text("And I have created a username for you to login to CAT forum. \n\n*username*: *%s* " % assigned_name )
                        update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')
                    else:
                        update.message.reply_text('Okay, I get your group id!')
                        update.message.reply_text('Sorry! We are running out of avatar names to assign to you, the avatar name is for you to login to CAT website.Let professor know and continue with the registration.')
                        update.message.reply_text('Now. Last step!  Please choose a password for yourself. It will be your password to log in to CAT website! \n\nPlease use format: \n/pwd [Your Password]. \n\nFor example: \n/pwd password')                
                else:
                    update.message.reply_text('Wrong input!! The section is not a valid section. Please enter again.')                    
                
            else:
                update.message.reply_text('Wrong input!! Your group_id needs to start with a "G" or "g". Please enter again.')             
        else:
            update.message.reply_text('Wrong input!!')  
    else:
        update.message.reply_text('Wrong input!! Please use the correct format.') 
    
        
        
       
"""This method runs after users provide web password."""        
def web_password(bot,update,args):
    # retrieve user's chat_id from update.
    chat_id = update.message.chat.id   
    if len(args) != 0:
        if args[0]=="": # the condition will always be false.           
            #password cannot be empty string.
            update.message.reply_text('Your password cannot be empty! Please enter again!')
        elif len(args) == 1:
            #hash the password.
            pwd_bytes = args[0].encode()
            hash_obj = hashlib.sha1(pwd_bytes)
            hex_dig = hash_obj.hexdigest()
            #insert the hash value(in hex) into database.
            registration.verifyRegistration.insert_password_hash(chat_id,hex_dig)
            registration.verifyRegistration.insert_qa(chat_id) 
            update.message.reply_text('Woohoo! registration is successful! Please use /help to see what can this bot do for you!')
        else:
            #password cannot contain empty spaces.
            update.message.reply_text('Your password cannot contain white spaces! Please enter again!')
    else:
        update.message.reply_text('Wrong input!! Please use the correct format.')



"""This method assign a random avatar_name to student"""
def assign_avatar_name(chat_id):
    #select a random row from db
    avatar_name_and_status = registration.verifyRegistration.retrieve_random_row()

    if avatar_name_and_status is None:
        return None
    else:          
        #insert into avatar table.
        registration.verifyRegistration.insert_avatar(avatar_name_and_status[0])
        #retrieve generated avatar_id.
        avatar_id = registration.verifyRegistration.retrieve_avatar_id(avatar_name_and_status[0])
        #insert into student table.
        registration.verifyRegistration.input_avatar_id(avatar_id[0],chat_id)
        #update avatar_name status.
        registration.verifyRegistration.update_avatar_status(avatar_name_and_status[0])
        
        return avatar_name_and_status[0]
    
    
    
    
        
       




        
        
          
    
    
    
    

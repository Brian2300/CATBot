'''
Created on 20 Sep 2017

@author: jiaqi
'''

import pymysql.cursors
import random,string
import property


hostname = property.hostname
username = property.username
password = property.password
database = property.database

# hostname = '10.0.106.110'
# username = 'ise'
# password = 'LARCdata1612!'
# database = 'ise'



"""This method retrieves the group_id using chat_id from 'student' """
def retrieve_gid(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `group_id` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result   



"""This method retrieves the avatar_id by group_id from the 'professor_section' table"""
def retrieve_avatar_id(group_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)     

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `avatar_id` FROM `professor_section` WHERE `group_id` = %s"
            cursor.execute(sql, (group_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the smu_email using avatar_id from the 'professor' table"""
def retrieve_prof_email(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)        

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email` FROM `professor` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the future available timeslot from a particular professor."""
def available_timeslot(smu_email):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)     

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `start_DateTime`, `end_DateTime` FROM `consultationtimeslot` WHERE `smu_email` = %s and `start_DateTime` >= CURRENT_TIMESTAMP() ORDER BY `start_DateTime`"
            cursor.execute(sql, (smu_email))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the group_id and smu_email using chat_id for a particular student"""
def retrieve_gid_smu_email(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
        
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `group_id`,`smu_email` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""this method retrieves the title of the timeslot"""
def retrieve_title(smu_email,start_DateTime,end_DateTime):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `title` FROM `consultationtimeslot` WHERE `smu_email` = %s and `start_DateTime` = %s and `end_DateTime` = %s"
            cursor.execute(sql, (smu_email,start_DateTime,end_DateTime))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method inserts the chosen timeslot to table `student_consultationtimeslot` """
def insert_chosen_timslot(smu_email,student_email,title,start_DateTime,end_DateTime):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `student_consultationtimeslot` (`smu_email`, `student_email`, `title`, `start_DateTime`, `end_DateTime`, `status`) VALUES (%s, %s, %s, %s, %s, %s)"
            cursor.execute(sql, (smu_email,student_email,title,start_DateTime,end_DateTime,'pending'))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()



"""This method checks whether a particular booking exists in database. Also select the status"""
def check_booking(smu_email,student_email,start_DateTime,end_DateTime):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `status` FROM `student_consultationtimeslot` WHERE `smu_email` = %s and `student_email` = %s and `start_DateTime` = %s and `end_DateTime` = %s"
            cursor.execute(sql, (smu_email,student_email,start_DateTime,end_DateTime))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the smu_email using chat_id for a particular student"""
def retrieve_smu_email(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
        
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the approved consultation slots for a particular student."""
def approved_slots(student_email):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)    


    try:
        with connection.cursor() as cursor:
            sql = "SELECT `start_DateTime`, `end_DateTime` FROM `student_consultationtimeslot` WHERE `student_email` = %s  and `status` = 'approve' and `start_DateTime` >= CURRENT_TIMESTAMP() ORDER BY `start_DateTime`"
            cursor.execute(sql, (student_email))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the pending consultation slots for a particular student."""
def pending_slots(student_email):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)    


    try:
        with connection.cursor() as cursor:
            sql = "SELECT `start_DateTime`, `end_DateTime` FROM `student_consultationtimeslot` WHERE `student_email` = %s  and `status` = 'pending' and `start_DateTime` >= CURRENT_TIMESTAMP() ORDER BY `start_DateTime` "
            cursor.execute(sql, (student_email))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the reject consultation slots for a particular student."""
def rejected_slots(student_email):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)    


    try:
        with connection.cursor() as cursor:
            sql = "SELECT `start_DateTime`, `end_DateTime` FROM `student_consultationtimeslot` WHERE `student_email` = %s  and `status` = 'reject' and `start_DateTime` >= CURRENT_TIMESTAMP() ORDER BY `start_DateTime` "
            cursor.execute(sql, (student_email))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result



"this method retrieves the all slot status"
def retrieve_slot_status(prof_email,ava_timeslot_list):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `status` FROM `student_consultationtimeslot` WHERE `smu_email` = %s and `start_DateTime` = %s and `end_DateTime` = %s"
            cursor.execute(sql, (prof_email,ava_timeslot_list[0],ava_timeslot_list[1]))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result









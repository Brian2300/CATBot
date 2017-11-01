'''
Created on 1 Nov 2017

@author: jiaqi
'''


import pymysql.cursors
import random,string


hostname = 'localhost'
username = 'root'
password = ''
database = 'is102_cat'

# hostname = '10.0.106.110'
# username = 'ise'
# password = 'LARCdata1612!'
# database = 'ise'



"To identify whether the user is professor or student"
def identify_user_role(chat_id):
    student = retrieve_student(chat_id)
    professor = retrieve_prof(chat_id)
    if student is not None: #it is a student user.
        role_tup = ('student',)
        student_tup = role_tup + student
        return student_tup
    if professor is not None: #it is a professor user.
        role_tup = ('prof',)
        professor_tup = role_tup + professor
        return professor_tup
    


def retrieve_student(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result 



def retrieve_prof(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM `professor_tele` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result    
    
    

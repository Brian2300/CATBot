'''
Created on 14 Nov 2017

@author: jiaqi
'''

import pymysql.cursors
import random,string
import property


hostname = property.hostname
username = property.username
password = property.password
database = property.database



def retrieve_stu_id(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email_id` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result



def retrieve_presence_num(smu_email_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT count(DISTINCT `week`) FROM `weekly_class_participation` WHERE `student_id` = %s"
            cursor.execute(sql, (smu_email_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result    



def retrieve_post_summary_marks(smu_email_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT AVG(`mark`) FROM `weekly_post_summary` WHERE `smu_email_id` = %s"
            cursor.execute(sql, (smu_email_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result    



def retrieve_avatar_id_stu(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `avatar_id` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result    


def retrieve_questions(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT count(*) FROM `post` WHERE `avatar_id` = %s and `is_question` = 1 "
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result  


  
def retrieve_replys(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT count(*) FROM `post` WHERE `avatar_id` = %s and `is_question` = 0"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result  



def retrieve_avatar_name_stu(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `avatar_name` FROM `avatar` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result  


def retrieve_qacoins(chat_id):    
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `qa_coins` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()
    return result


'''
Created on 24 Aug 2017

@author: jiaqi
'''

import pymysql.cursors
import random,string


hostname = 'localhost'
username = 'root'
password = ''
database = 'is102_cat'



"""This method retrieves the group_id of the student from student table"""
def retrieve_group_id(chat_id):
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



"""This method retrieves the avatar_id by group_id from the professor_section table"""
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



"""This method retrieves total number of questions in the post-class-summary the student should answer"""
def num_of_question(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)     

    try:
        with connection.cursor() as cursor:
            sql = "SELECT COUNT(`question_id`) FROM `post_class_summary_questions` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result     



"""This method retrieves the question_ids from the 'post_class_summary_questions' table"""
def q_id(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)      

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `question_id`  FROM `post_class_summary_questions` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchall()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the row_count from the 'post_class_summary_questions' table """    
def row_count(avatar_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
        
    try:
        with connection.cursor() as cursor:
            sql = "SELECT COUNT(*) FROM `post_class_summary_questions` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result    



"""This method inserts the smu_email_id, row_num, question_id into table 'left_post_class_question' """
def insert_email_row_num_q_id(smu_email_id, r,q_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `left_post_class_question` (`smu_email_id`, `row_num`, `question_id`) VALUES (%s, %s, %s)"
            cursor.execute(sql, (smu_email_id,r,q_id))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()
        


"""This method retrieves the MIN() row_num and corresponding question_id from the 'left_post_class_question' table"""    
def retrieve_minrow_question_id(smu_email_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
       
    try:
        with connection.cursor() as cursor:
            sql = "SELECT MIN(`row_num`)  FROM `left_post_class_question` WHERE `smu_email_id` = %s"
            cursor.execute(sql,(smu_email_id))
            result_1 = cursor.fetchone()
            
            sql = "SELECT `question_id` FROM `left_post_class_question` WHERE `row_num` = %s and `smu_email_id` = %s"
            cursor.execute(sql,(result_1[0],smu_email_id))
            result_2 = cursor.fetchone()
            
            result = result_1 + result_2
    
    finally:
        connection.close()  
    return result 



"""This method retrieves question by using question_id"""
def retrieve_question(question_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `question` FROM `post_class_summary_questions` WHERE `question_id` = %s"
            cursor.execute(sql, (question_id))
            result = cursor.fetchone() 
    
    finally:
        connection.close()    
    return result 



"""This method retrieves the smu_email_id, group_id of the student from student table"""
def retrieve_smu_email_id_group_id(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email_id`, `group_id` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result 



"""This method inserts the answer into 'post_class_summary_answer' table"""
def insert_post_class_answers(smu_email_id, question_id, question_hist, answer, group_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post_class_summary_answer` (`smu_email_id`, `week`, `question_id`, `question_hist`, `answer`, `group_id`) VALUES (%s, %s, %s, %s, %s, %s)"        
            cursor.execute(sql, (smu_email_id, 20, question_id, question_hist, answer, group_id))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()



"""This method deletes the min row_num entry in 'left_post_class_question' table for a particular student"""
def delete_min_row_qid(smu_email_id,row_num):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "DELETE FROM `left_post_class_question` WHERE `row_num` = %s and `smu_email_id` = %s"
            cursor.execute(sql, (row_num, smu_email_id))

        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
            
    finally:
        connection.close()    



"""This method retrieves the row_num only from 'left_post_class_question' table for a particular student. """  
def retrieve_min_row(smu_email_id):      
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            sql = "SELECT MIN(`row_num`)  FROM `left_post_class_question` WHERE `smu_email_id` = %s "
            cursor.execute(sql,(smu_email_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()  
    return result 



"""This method retrieves the q_id from `left_post_class_question` for a particular student """
def retrieve_q_id(smu_email_id, min_row_num):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)

    try:
        with connection.cursor() as cursor:
            
            sql = "SELECT `question_id` FROM `left_post_class_question` WHERE `row_num` = %s and `smu_email_id` = %s "
            cursor.execute(sql,(min_row_num,smu_email_id))
            result = cursor.fetchone()
            
    finally:
        connection.close()  
    return result     



"""This method retrieves the smu_email_id from 'student' table""" 
def retrieve_smu_email_id(chat_id):
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



"""This method update the week field in 'post_class_summary_answer' table """
def update_week_db(smu_em_id, week_num):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
        
    try:
        with connection.cursor() as cursor:
            sql = "UPDATE `post_class_summary_answer` SET `week` = %s  WHERE `smu_email_id` = %s AND `week` = 20"
            cursor.execute(sql, (week_num,smu_em_id))
 
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
             
    finally:
        connection.close()  
        


"""This method retrieves the current week from 'weekly_class_participation'"""
def retrieve_cur_week():
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)     
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT MAX(`week`) FROM `weekly_class_participation`"
            cursor.execute(sql)
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method retrieves the record in 'post_class_summary_answer' table """
def check_post_class_summary_submission(week, smu_email_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)    
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT * FROM `post_class_summary_answer` WHERE `week` = %s and `smu_email_id` = %s"
            cursor.execute(sql,(week,smu_email_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result 

    
    
    
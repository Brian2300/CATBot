'''
Created on 23 Oct 2017

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


"This method retrieves the avatar_id using chat_id from student table."
def retrieve_avatar_id(chat_id):
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

 

"This method inserts all except tag and post_content to post table"
def insert_with_title(avatar_id_stu, title):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post` (`avatar_id`, `parent_id`, `level`, `post_title`, `post_content`, `is_question`, `is_bot`, `is_qa_bountiful`, `timestamp`, `time_limit_qa`, `time_limit_bot`, `qa_coin_basic`, `qa_coin_bounty`, `thoughfulness_score`, `no_show`, `previous_version`, `number_of_upvotes`, `number_of_downvotes`) VALUES (%s, 0 , 0 , %s, 'empty', 1 , 0, 0, NOW(), 0, 0, 0, 0, 0, 0, 0, 0, 0);"
            cursor.execute(sql, (avatar_id_stu,title))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()    
        
        
        
"This method retrieves the max post_id of a avatar from post table."
def retrieve_max_post_id(avatar_id_stu):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    try:
        with connection.cursor() as cursor:
            sql = "SELECT MAX(`post_id`) FROM `post` WHERE `avatar_id` = %s"
            cursor.execute(sql, (avatar_id_stu))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result    



"This method retrieves tag_id from the tag table"
def retrieve_tag_id(tag):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `tag_id` FROM `tag` WHERE `tag` = %s"
            cursor.execute(sql, (tag))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result      



"This method inserts into post_tag table"   
def insert_to_post_tag(max_post_id,tag_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post_tag` (`post_id`, `tag_id`, `association`) VALUES (%s, %s, 0)"        
            cursor.execute(sql, (max_post_id,tag_id))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()    



"This method updates the post content for users' current post."
def update_post_content(post_content,max_post_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
        
    try:
        with connection.cursor() as cursor:
            sql = "UPDATE `post` SET `post_content` = %s  WHERE `post_id` = %s"
            cursor.execute(sql, (post_content,max_post_id))
 
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
             
    finally:
        connection.close()      
    
    
    
    
    
    
    
    
    
    
    
    
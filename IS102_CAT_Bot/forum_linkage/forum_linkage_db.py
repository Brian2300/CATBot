'''
Created on 23 Oct 2017

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



"This method retrieves the avatar_id using chat_id from `professor_tele` table."
def retrieve_avatar_id_prof(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email` FROM `professor_tele` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            smu_email = cursor.fetchone()
            
        with connection.cursor() as cursor:
            sql = "SELECT `avatar_id` FROM `professor` WHERE `smu_email` = %s"
            cursor.execute(sql, (smu_email))
            avatar_id = cursor.fetchone()          
    
    finally:
        connection.close()    
    return avatar_id 

 

"This method inserts all except tag and post_content to post table"
def insert_with_title(avatar_id_stu, title):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post` (`avatar_id`, `parent_id`, `level`, `post_title`, `post_content`, `is_question`, `is_bot`, `is_qa_bountiful`, `timestamp`, `time_limit_qa`, `time_limit_bot`, `qa_coin_basic`, `qa_coin_bounty`, `thoughfulness_score`, `no_show`, `previous_version`, `number_of_upvotes`, `number_of_downvotes`) VALUES (%s, 0 , 0 , %s, 'kweh#k1', 1 , 0, 0, NOW(), 0, 0, 0, 0, 0, 0, 0, 0, 0);"
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



"This method inserts into post_tag table with tag others"   
def insert_to_post_tag_other(max_post_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post_tag` (`post_id`, `tag_id`, `association`) VALUES (%s, 21, 0)"        
            cursor.execute(sql, (max_post_id))
    
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

    
    
"This methods retrieves the post by using post_id"   
def pull_latest_post(post_id):  
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `post_id`, `parent_id`, `post_title`, `post_content` FROM `post` WHERE post_id = %s"
            cursor.execute(sql, (post_id))
            post = cursor.fetchone()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post    


    
"This method retrieves the tag of a post"   
def retrieve_tag(post_id): 
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `tag_id` FROM `post_tag` WHERE post_id = %s"
            cursor.execute(sql, (post_id))
            tag_id = cursor.fetchone()
        
        with connection.cursor() as cursor:
            sql = "SELECT `tag` FROM `tag` WHERE tag_id = %s"
            cursor.execute(sql, (tag_id))
            tag = cursor.fetchone()        
        
    finally:
        connection.close()
    return  tag



"This method retrieves the parent post title from the post table"
def retrieve_parent_post_title(parent_id):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `post_title` FROM `post` WHERE post_id = %s"
            cursor.execute(sql, (parent_id))
            post = cursor.fetchone()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post 



"This method retrieves the post_id,level,post_title" 
def r_parent_post_id_level_pt(post_content):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `post_id`,`level`,`post_title` FROM `post` WHERE post_content = %s"
            cursor.execute(sql, (post_content))
            post = cursor.fetchone()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post 



"This method inserts a reply message to post table"
def insert_reply(avatar_id_stu,parent_id,level,post_title,reply_text):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `post` (`avatar_id`, `parent_id`, `level`, `post_title`, `post_content`, `is_question`, `is_bot`, `is_qa_bountiful`, `timestamp`, `time_limit_qa`, `time_limit_bot`, `qa_coin_basic`, `qa_coin_bounty`, `thoughfulness_score`, `no_show`, `previous_version`, `number_of_upvotes`, `number_of_downvotes`) VALUES (%s, %s , %s , %s, %s, 0 , 0, 0, NOW(), 0, 0, 0, 0, 0, 0, 0, 0, 0);"
            cursor.execute(sql, (avatar_id_stu,parent_id,level,post_title,reply_text))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()   



"This method inserts into 'reply_send_from_telegroup' table to indicate a reply message is sent from tele not web portal"
def insert_id_sent_fromTele(post_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database) 

    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `reply_send_from_telegroup` (`post_id`) VALUES (%s);"
            cursor.execute(sql, (post_id))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()    



"This method retrieves the post_id by using post_content"  
def retrieve_id_by_content(post_content):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `post_id` FROM `post` WHERE post_content = %s"
            cursor.execute(sql, (post_content))
            post = cursor.fetchone()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post     



"This method retrieves a post_id from 'reply_send_from_telegroup' table"
def retrieve_reply_addr(post_id):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `post_id` FROM `reply_send_from_telegroup` WHERE post_id = %s"
            cursor.execute(sql, (post_id))
            post = cursor.fetchone()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post     








    
     
    
    
    
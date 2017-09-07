'''
Created on 15 Aug 2017

@author: jiaqi
'''
'''
pull the latest post
pull all post
'''

import pymysql.cursors

hostname = 'localhost'
username = 'root'
password = ''
database = 'is102_cat'


 
def pull_latest_post(post_id): 
    
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `topic_id`, `post_subject`, `post_text` FROM `phpbb_posts` WHERE post_id = %s"
            cursor.execute(sql, (post_id))
            post = cursor.fetchall()
        #print(question_posts)
        #print(len(question_posts))
        
    finally:
        connection.close()
    return post



"""This method pulls the latest topic_id (maximum)"""
def pull_latest_topic():

    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT MAX(`topic_id`) FROM `phpbb_topics` " #select topic title and text
            cursor.execute(sql)
            new_topic = cursor.fetchall()
        
    finally:
        connection.close()
    
    return new_topic



"""This method retrieves the topic title from 'phpbb_topics' table"""
def topic_title(topic_id):
    
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)    

    try:
        with connection.cursor() as cursor:
            sql = "SELECT `topic_title` FROM `phpbb_topics` WHERE `topic_id` = %s" #select topic title and text
            cursor.execute(sql,(topic_id))
            topic_title = cursor.fetchall()
        
    finally:
        connection.close()
    
    return topic_title



"""This method retrieves the fisrt_post_id of a topic"""
def fisrt_post_id(topic_id):
    
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)      
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `topic_first_post_id` FROM `phpbb_topics` WHERE `topic_id` = %s" #select topic title and text
            cursor.execute(sql,(topic_id))
            topic_first_post_id = cursor.fetchall()
        
    finally:
        connection.close()
    
    return topic_first_post_id

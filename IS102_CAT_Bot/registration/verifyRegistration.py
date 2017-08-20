'''
Created on 12 Jul 2017

@author: jiaqi
'''

import pymysql.cursors
import random,string


hostname = 'localhost'
username = 'root'
password = ''
database = 'is102_cat'


'''This method insert chat_id, veri_code and temp_smu_email_address into db'''
def first_insert(chat_id,tele_username,veri_code,temp_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    smu_email_id = generate_dummy_smu_email_id()
    
    try:
        with connection.cursor() as cursor:
            # Create a new record
            sql = "INSERT INTO `student` (`smu_email_id`, `chat_id`,`tele_username`, `veri_code`,`temp_smu_email_address`) VALUES (%s, %s, %s, %s, %s)"
            cursor.execute(sql, (smu_email_id, chat_id, tele_username, veri_code, temp_id))
    
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    
    finally:
        connection.close()



'''This method is to randomly generate a dummy smu_email_id (a string with 5 lowercase letters)for a user'''
def generate_dummy_smu_email_id():
    return ''.join(random.choice(string.ascii_lowercase) for i in range(5))



'''This method retrieves the stored values of the "chat_id" and "veri_code". '''
def retrieve_first_insert(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT `veri_code` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
    
    finally:
        connection.close()    
    return result



"""This method inserts verified smu_email and smu_email_id into database"""
def insert_smu_email(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        # retrieve temp_smu_email_address
        with connection.cursor() as cursor:
            sql = "SELECT `temp_smu_email_address` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
        
        # insert temp into primary key.
        with connection.cursor() as cursor:
            sql = "UPDATE `student` SET `smu_email` = %s WHERE `chat_id` = %s"
            cursor.execute(sql, (result[0],chat_id))
            
        #extract smu_email_id from smu_email.
        smu_email_id = result[0].split("@",1)[0]
        
        with connection.cursor() as cursor:
            sql = "UPDATE `student` SET `smu_email_id` = %s WHERE `chat_id` = %s"
            cursor.execute(sql, (smu_email_id,chat_id))        
            
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    finally:
        connection.close()       
        

       
"""This method retrieves the chat_id"""
def check_registration_chat_id(chat_id):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)
            
    try:
        with connection.cursor() as cursor:
            sql = "SELECT COUNT(*) FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
            
    finally:
        connection.close()    
        return result
    


"""This method retrieves the smu_email_id (WHERE)"""    
def check_registration_smu_email_id(chat_id):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)    
    
    try:
        # retrieve smu_email_id
        with connection.cursor() as cursor:
            sql = "SELECT `smu_email_id` FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
            
    finally:
        connection.close()    
        return result   
    
    
    
"""This method retrieves the number of rows that a particular temp_smu_email_address appears in database.(COUNT)"""   
def check_smu_email_address_existance(temp_smu_email_address): 
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database)  
    
    try:
        with connection.cursor() as cursor:
            sql = "SELECT COUNT(*) FROM `student` WHERE `temp_smu_email_address` = %s"
            cursor.execute(sql, (temp_smu_email_address))
            result = cursor.fetchone()
            
    finally:
        connection.close()    
        return result  
    
     
    
"""This method inserts the group_id in database"""
def insert_group_id(chat_id, group_id):
    connection = pymysql.connect(host = hostname,
                            user= username,
                            password=password,
                            db=database) 
    
    try:
        with connection.cursor() as cursor:
            sql = "UPDATE `student` SET `group_id` = %s WHERE `chat_id` = %s"
            cursor.execute(sql, (group_id,chat_id))
            
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()                       
    finally:
        connection.close()    



"""This method inserts password hash value into database."""
def insert_password_hash(chat_id, pwd_h):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)

    try:
        # insert password into database.
        with connection.cursor() as cursor:
            sql = "UPDATE `student` SET `password` = %s WHERE `chat_id` = %s"
            cursor.execute(sql, (pwd_h,chat_id))
            
        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
    finally:
        connection.close()  



"""This method retrieves the number of rows of a particular chat_id"""
def retrieve_num_chat_id(chat_id):
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
        
    try:
        with connection.cursor() as cursor:
            sql = "SELECT COUNT(*) FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))
            result = cursor.fetchone()
            
    finally:
        connection.close()    
        return result   
    
      
    
"""This method deletes the wrong smu email entry line by using chat_id"""
def delete_duplicate_chat_id(chat_id):       
    connection = pymysql.connect(host = hostname,
                                user= username,
                                password=password,
                                db=database)
    
    try:
        with connection.cursor() as cursor:
            sql = "DELETE FROM `student` WHERE `chat_id` = %s"
            cursor.execute(sql, (chat_id))

        # connection is not autocommit by default. So you must commit to save the changes.
        connection.commit()
                   
    finally:
        connection.close()          


'''
Created on Jun 16, 2017
@author: Brian

'''
#!/usr/bin/python

import property

hostname = property.hostname
username = property.username
password = property.password
database = property.database
 
# hostname = '10.0.106.110'
# username = 'ise'
# password = 'LARCdata1612!'
# database = 'ise'



def check_attendance_code(chat_id, attendance_code):
    '''connect to the data base, use chat_id and attendance_code to check returns true of False
    '''
    result = False
    import pymysql
    from datetime import datetime
    from datetime import timedelta
    myConnection = pymysql.connect( host=hostname, user=username, passwd=password, db=database )
    cur = myConnection.cursor()
    timediff = timedelta(seconds = 50) #the allowable time difference is 50 seconds 
    cur.execute( "SELECT qrcode FROM `qrauthentication` WHERE `time`<'"+str(datetime.now()+timediff)+"' and `time`>'"+str(datetime.now()-timediff)+"'" )
    #change to the passphase
    attendance_password_list = cur.fetchall()
    #print(str(datetime.now()+timediff))
    #print("here is the attendance list")
    #print (attendance_password_list)
    #print("YOu entered>"+ attendance_code)
    for attendance_password in attendance_password_list:
        #print(type(attendance_password[1]))
        #print (attendance_password[1])
        #print (attendance_password[0])
        if attendance_code == "/start "+attendance_password[0] or attendance_code == "/ta "+attendance_password[0]:          
            cur.execute( "SELECT `smu_email_id` FROM `student` WHERE `chat_id` = '"+str(chat_id)+"'" )
            # need to handle exception, that only one entry is returned
            #print("the chat_id is " +str(chat_id))
            student = cur.fetchall()[0][0]
            cur.execute("SELECT week FROM `qrauthentication` WHERE `qrcode`='"+attendance_password[0]+"' ")
            week = cur.fetchall()[0][0]
            cur.execute("SELECT COUNT(`student_id`) FROM `weekly_class_participation` WHERE `student_id`='"+student+"'and week='"+str(week)+"' ")
            NumRecords = cur.fetchall()
            #print(NumRecords)
            
            #print("the weeek is "+str(week))
            ###################
            # the following SQL takes the attendance
            if NumRecords[0][0] >=1:
                #print("trying to update .....")
                cur.execute( "UPDATE `weekly_class_participation` SET `attendance` = '1' WHERE `weekly_class_participation`.`student_id` = '"+student+"'" )
            else:
                #print("trying to insert new entry .....")
                cur.execute( "INSERT INTO `weekly_class_participation`(`student_id`, `week`, `attendance`, `QA_Coins`) VALUES ('"+student+"','"+str(week)+"',1,0)")
            
            result = True
            #################
    myConnection.commit()       
    myConnection.close()
    return result

    
    
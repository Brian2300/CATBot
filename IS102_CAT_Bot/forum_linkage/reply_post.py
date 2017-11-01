'''
Created on 29 Oct 2017

@author: jiaqi
'''

from forum_linkage import forum_linkage_db


"This method handles the reply message from a user."
def handle_reply(bot, update):
#    try: 
    #retrieve the original message.
    msg_text = update.message.reply_to_message.text
    #retrieve the reply message.
    reply_text = update.message.text
    #chat_id
    chat_id = update.message.from_user.id
    #retrieve avatar_id using chat_id from student table.
    avatar_id_stu = forum_linkage_db.retrieve_avatar_id(chat_id) 
    #print ( avatar_id_stu) 
    
    if "Reply Content" in msg_text or "Post Content" in msg_text:        
        #parent_id
        parent_id = -1
        level = -1
        post_title=""
        if "Reply Content" in msg_text:
            #retrieve parent "reply_post" information by using post content.
            ori_reply_content = msg_text.split("Reply Content:",1)[1]
            ori_reply_content_pure = ori_reply_content.strip()
            parent_reply = forum_linkage_db.r_parent_post_id_level_pt(ori_reply_content_pure)
            parent_id = parent_reply[0]
            level = parent_reply[1] +1
            post_title = parent_reply[2]    
            #insert reply message into database.
            forum_linkage_db.insert_reply(avatar_id_stu,parent_id,level,post_title,reply_text)  
            #insert reply post_id into 'reply_send_from_telegroup' table
            post_id_cur_reply = forum_linkage_db.retrieve_id_by_content(reply_text)
            forum_linkage_db.insert_id_sent_fromTele(post_id_cur_reply)
            update.message.reply_text("Hi! Your reply has been recorded.")
                       
        elif "Post Content" in msg_text:
            #retrieve parent "post" information by using post content.
            msg_content = msg_text.split("Post Content:",1)[1]
            print (msg_content)
            msg_content_pure = msg_content.strip()
            #print (msg_content_pure)
            parent_post = forum_linkage_db.r_parent_post_id_level_pt(msg_content_pure)
            parent_id = parent_post[0]
            level = parent_post[1] +1
            post_title = parent_post[2]
            #insert reply message into database
            forum_linkage_db.insert_reply(avatar_id_stu,parent_id,level,post_title,reply_text)
            #insert reply post_id into 'reply_send_from_telegroup' table
            post_id_cur_reply = forum_linkage_db.retrieve_id_by_content(reply_text)
            forum_linkage_db.insert_id_sent_fromTele(post_id_cur_reply)
            update.message.reply_text("Hi! Your reply has been recorded.")
#     except IndexError:
#         print ("IndexError Exception caught!")
    else:
        #if the original message is a forum post.  -retrieve parent_post_infor by using post_content.
        parent_post = forum_linkage_db.r_parent_post_id_level_pt(msg_text)
        if parent_post is not None: 
            parent_id = parent_post[0]
            level = parent_post[1] +1
            post_title = parent_post[2] 
            #insert reply message into database
            forum_linkage_db.insert_reply(avatar_id_stu,parent_id,level,post_title,reply_text)
            #insert reply post_id into 'reply_send_from_telegroup' table
            post_id_cur_reply = forum_linkage_db.retrieve_id_by_content(reply_text)   
            forum_linkage_db.insert_id_sent_fromTele(post_id_cur_reply)
            update.message.reply_text("Hi! Your reply has been recorded.")

            
                         
        
        
         
            
            
        
        
        
    

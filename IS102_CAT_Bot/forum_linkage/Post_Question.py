'''
Created on 22 Oct 2017

@author: jiaqi
'''


from forum_linkage import forum_linkage_db
from telegram import *
from telegram.ext import MessageHandler, Filters, ConversationHandler



"send out start message to trigger the start of conversation/send first queston."
def startMsg(bot, update):
    query = update.callback_query
    
    bot.edit_message_text(text="Hi! Click on /Post, if you are ready to post a question to CAT forum!",
                          chat_id=query.message.chat_id,
                          message_id=query.message.message_id)  



"This method sends out the first question and asked for post_title"
def ask_for_title(bot, update):  
    
    update.message.reply_text("Hi! Please enter a title for your post!")    
    return 0



"This methods handles the title inputs and ask for tag."
def store_title_ask_for_tag(bot, update):
    #chat_id
    chat_id = update.message.chat.id
    #retrieve avatar_id using chat_id from student table.
    avatar_id_stu = forum_linkage_db.retrieve_avatar_id(chat_id)
    #get title from user input.
    title = update.message.text
    #insert into database.
    forum_linkage_db.insert_with_title(avatar_id_stu, title) 
    #ask for tag:
    reply_keyboard = [['countif', 'index', 'lookup','match','norm.dist'],
                      ['norminv', 'offset','pivot table','round', 'slope'],
                      ['small','solver','sqrt','stdev','substitute'],
                      ['sumproduct','sumsq','time','vlookup','ztest']]
     
    update.message.reply_text(
        'Now, please choose a tag for your post: ',
        reply_markup=ReplyKeyboardMarkup(reply_keyboard, one_time_keyboard=True))   
    
    return 1 



"This method handles the tag inputs and ask for post_content"
def ask_for_content(bot, update):   
    #chat_id
    chat_id = update.message.chat.id
    #retrieve avatar_id using chat_id from student table.
    avatar_id_stu = forum_linkage_db.retrieve_avatar_id(chat_id)    
    # retrieve the maximum post id from a particular user(using avatar_id)
    max_post_id = forum_linkage_db.retrieve_max_post_id(avatar_id_stu)
    #retrieve tag_id from tag table
    tag = update.message.text
    #print(tag)
    tag_id = forum_linkage_db.retrieve_tag_id(tag) 
    #insert max_post_id, tag_id to post_tag table.
    forum_linkage_db.insert_to_post_tag(max_post_id,tag_id)
    
    update.message.reply_text("Okay, please send me your post content!")
    return 2



"This method handles the post content input from user."
def update_post_content(bot, update):
    #update post content.
        #chat_id
    chat_id = update.message.chat.id
        #retrieve avatar_id using chat_id from student table.
    avatar_id_stu = forum_linkage_db.retrieve_avatar_id(chat_id)    
        # retrieve the maximum post id from a particular user(using avatar_id)
    max_post_id = forum_linkage_db.retrieve_max_post_id(avatar_id_stu) 
    post_content = update.message.text   
    forum_linkage_db.update_post_content(post_content,max_post_id)
    
    update.message.reply_text("You have successfully posted a question in CAT forum!")
    return ConversationHandler.END
    
    





 
    
    
    
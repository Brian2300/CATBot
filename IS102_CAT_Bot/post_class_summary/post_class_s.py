'''
Created on 24 Aug 2017

@author: jiaqi
'''

import post_class_summary
from telegram import *
from telegram.ext import MessageHandler, Filters, ConversationHandler
from post_class_summary import post_class_summary_db



"""This method creates status dictionary for ConversationHandler"""
def create_status_dic(bot,update):
    #empty status dictionary
    status = {}
    #chat_id
    query = update.callback_query
    chat_id = query.message.chat_id
    #retrieve group_id by chat_id
    group_id = post_class_summary_db.retrieve_group_id(chat_id)
    #retrieve professor_avatar_id by group_id
    p_avatar_id = post_class_summary_db.retrieve_avatar_id(group_id[0])    
    # count the number of questions by avatar_id
    num_q = post_class_summary_db.num_of_question(p_avatar_id[0])
    status[0] = [MessageHandler(Filters.text, ask_current_week)]
    
    for i in range(1, num_q[0]+1):
        status[i] = [MessageHandler(Filters.text, receive_answer_send_rest_questions)]
    
    return status



"""This method ask the user for current week """
def ask_current_week(bot,update):
    reply_keyboard = [['week1', 'week2', 'week3','week4'],
                      ['week5', 'week6', 'week7','week9'],
                      ['week10', 'week11', 'week12','week13']]
    
    update.message.reply_text(
        'Hi! Let me know the current week! ',
        reply_markup=ReplyKeyboardMarkup(reply_keyboard, one_time_keyboard=True))
    return 1



"""This method updates the ' left_post_class_question' table and triggers to send out the first question."""
def post_class_summary(bot,update):
    #retrieve the avatar_id of professor.
    
        #chat_id
    chat_id = update.message.chat.id
        #retrieve group_id by chat_id
    group_id = post_class_summary_db.retrieve_group_id(chat_id)
        #retrieve professor_avatar_id by group_id
    p_avatar_id = post_class_summary_db.retrieve_avatar_id(group_id[0])      
    #retrieve the question_ids from 'post_class_summary_questions' table by p_avatar_id
    question_list = post_class_summary_db.q_id(p_avatar_id) # question_list is of data type Tuple.
    #print(question_list) # ((1,), (2,), (3,))
    # retrieve the row_count from 'post_class_summary_questions' table by p_avatar_id
    row_count = post_class_summary_db.row_count(p_avatar_id) # row_count is of data type Tuple.
    #update the 'left_post_class_question' table using the retrieved row_num and question_ids.
    for i in range(row_count[0]):
        r = i+1
        q_id = question_list[i][0]
        post_class_summary_db.insert_row_num_q_id(r,q_id)
    #select MIN() row_num and corresponding question_id from 'left_post_class_question' table
    min_r_q_id = post_class_summary_db.retrieve_minrow_question_id() #min_r_q_id is of data type Tuple. 
    #retrieve question by using question_id from 'post_class_summary_questions' table
    question = post_class_summary_db.retrieve_question(min_r_q_id[1])
    #send question to the user.
    update.message.reply_text(question[0])
    #return a status 
    status_code = min_r_q_id[0]-1
    return status_code



"""This method is triggered after the user send the answers"""
def receive_answer_send_rest_questions(bot,update):
    #insert information into 'post_class_summary_answer' table.
        #retrieve smu_email_id, group_id by using chat_id.
    print(update.message.text)
    chat_id = update.message.chat.id    
    smu_email_id_gid = post_class_summary_db.retrieve_smu_email_id_group_id(chat_id)
        #retrieve question_id from 'left_post_class_question' table.
    row_qid = post_class_summary_db.retrieve_minrow_question_id()
        #retrieve question from 'post_class_summary_questions' table.
    question_hist = post_class_summary_db.retrieve_question(row_qid[1])
        # get answer from user input.
    answer = update.message.text
    #insert
    post_class_summary_db.insert_post_class_answers(smu_email_id_gid[0], row_qid[1], question_hist[0], answer, smu_email_id_gid[1])
        
    #delete the min entry in 'left_post_class_question' table.
    post_class_summary_db.delete_min_row_qid(row_qid[0])
    #retrieve the next min row_num and question_id from 'left_post_class_question' table.
        #retrieve min_row_num
    new_min_row = post_class_summary_db.retrieve_min_row()
    
    if new_min_row[0] is None:
        
        update.message.reply_text("Your response has been successfully recorded!")
        return ConversationHandler.END
    else:
        # retrieve the q_id from 'left_post_class_question' table.
        new_q_id = post_class_summary_db.retrieve_q_id(new_min_row[0])
        # retrieve the question by q_id from 'post_class_summary_questions' table
        new_question = post_class_summary_db.retrieve_question(new_q_id[0])
        update.message.reply_text(new_question[0])
        states_code = new_min_row[0]
        return states_code
    
    
    #if the row_num is not null send out question, else, succesful message and end conversation.


        



      
      
      
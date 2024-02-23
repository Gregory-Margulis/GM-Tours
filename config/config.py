import pyodbc
from flask import Flask, request, jsonify
import logging

logger = logging.getLogger()

file_handler = logging.FileHandler('logfile.log')
formatter = logging.Formatter('%(asctime)s - %(message)s')
file_handler.setFormatter(formatter)
file_handler.setLevel(logging.WARNING)
logger.addHandler(file_handler)

def get_connection():
    '''
    147/02/2024
    Gregory Margulis
    action: create a connection to project database
    '''
    conn = pyodbc.connect ('DRIVER={ODBC Driver 17 for SQL Server};'
                          'SERVER=DESKTOP-RT6RSES\SQLEXPRESS01;'
                          'DATABASE=GM_Tours;'
                          'Trusted_Connection=yes;')
    return conn
    
def hello_world(): 
    '''
    147/02/2024
    Gregory Margulis
    action: test connection to project database
    '''
    conn = get_connection()
    cursor = conn.cursor()
    logger.warning("warning")
    cursor.execute("select [dbo].[hello_world]()")
    return jsonify ({'Hello_World': str(cursor.fetchall())})
    return 

    cursor.close()
    conn.close()


    

    
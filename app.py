import pyodbc
from flask import Flask,  make_response
from config import config
from flask_cors import CORS

app = Flask (__name__)
CORS(app)

@app.route ('/')
def test_conn():
    return config.hello_world()


    
if __name__ == '__main__':
      
    app.run(debug=True)


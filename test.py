from flask import Flask,request,json

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Webhooks with Python'

if __name__ == '__main__':
    app.run(debug=True)

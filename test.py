from flask import Flask,request,json

import ssl
context = ssl.SSLContext()
context.load_cert_chain('server.crt', 'server.key')

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Webhooks with Python'

@app.route('/githubIssue',methods=['POST'])
def githubIssue():
    data = request.json
    print(f'Issue {data["issue"]["title"]} {data["action"]}')
    print(f'{data["issue"]["body"]}')
    print(f'{data["issue"]["url"]}')
    return data

@app.route('/test',methods=['GET'])
def test():
    data = request.json
    print(f'Issue {data["value"]}')
    return data

@app.route('/test2',methods=['POST'])
def test2():
    data = request.json
    print(f'Issue {data["value"]}')
    return data

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8443, ssl_context=context)

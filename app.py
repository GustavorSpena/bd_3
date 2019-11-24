from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def hello():
    response = jsonify({'some': 'asda'})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

@app.route('/api/eventos', methods=['POST'])
def eventos():
    response = jsonify({'some': 'teste'})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response
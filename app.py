import time
import redis
from flask import Flask, jsonify

# Lib da Oracle para fazer interface com o banco de dados
import cx_Oracle

app = Flask(__name__)
cache = redis.Redis(host='redis', port=6379)


def get_hit_count():
    retries = 5
    while True:
        try:
            return cache.incr('hits')
        except redis.exceptions.ConnectionError as exc:
            if retries == 0:
                raise exc
            retries -= 1
            time.sleep(0.5)


@app.route('/')
def hello():
    connection = cx_Oracle.connect("sys", "Oradoc1", "localhost:1521/ORCL")

    print(connection)
    print(connection)
    print(connection)

    response = jsonify({'some': 'asda'})
    response.headers.add('Access-Control-Allow-Origin', '*')

    return response

@app.route('/api/eventos', methods=['POST'])
def eventos():
    response = jsonify({'some': 'teste'})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response
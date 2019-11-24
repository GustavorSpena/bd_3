from flask import Flask, jsonify, request
import psycopg2

app = Flask(__name__)

DSN = 'dbname=trab_3 user=root host=db'

@app.route('/')
def hello():
    conn = psycopg2.connect(DSN)
    cur = conn.cursor()
    cur.execute("SELECT * from EVENTO")
    x = cur.fetchone()[0]
    response = jsonify({'some': '123aaasd'})
    response.headers.add('Access-Control-Allow-Origin', '*')
    return response

@app.route('/api/eventos', methods=['POST'])
def eventos():
    ano = request.form.get('ano', None)
    titulo = request.form.get('titulo', None)
    
    if ano is None or ano == '':
        response = jsonify({
            'error': 'Ano não pode ser vazio'
        })
        code = 422
    elif titulo is None or titulo == '':
        response = jsonify({
            'error': 'Titulo não pode ser vazio'
        })
        code = 422
    else:
        conn = psycopg2.connect(DSN)
        cur = conn.cursor()
        try:
            cur.execute("INSERT INTO EVENTO (ano, titulo) VALUES (%s, %s)", (ano, titulo))
            conn.commit()
        except psycopg2.Error as e:
            print(e)
            
        conn.close()
        response = jsonify({
            'ano': ano,
            'titulo': titulo
        })
        code = 200

    response.headers.add('Access-Control-Allow-Origin', '*')
    return response, code
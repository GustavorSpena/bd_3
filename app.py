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
            # Verificar se o ano já está cadastrado
            cur.execute("SELECT ano FROM EVENTO WHERE ano={}".format(ano))
            data = cur.fetchone()
            if data is None:
                # Ano ainda não estava cadastrado
                cur.execute("INSERT INTO EVENTO (ano, titulo) VALUES (%s, %s)", (ano, titulo))
                conn.commit()
                response = jsonify({
                    'ano': ano,
                    'titulo': titulo
                })
                code = 200
            else:
                response = jsonify({
                    'error': 'Ano já cadastrado'
                })
                code = 422
        except psycopg2.Error as e:
            response = jsonify({
                'error': 'Ocorreu um erro inesperado'
            })
            code = 500
        
        conn.close()

    response.headers.add('Access-Control-Allow-Origin', '*')
    return response, code


@app.route('/api/lista_eventos', methods=['GET'])
def lista_eventos():
    conn = psycopg2.connect(DSN)
    cur = conn.cursor()
    try:
        # Verificar se o ano já está cadastrado
        cur.execute("SELECT * FROM EVENTO")
        data = cur.fetchall()
        response = jsonify({
            'data': data
        })
        code = 200
    except:
        response = jsonify({
            'error': 'Ocorreu um erro inesperado'
        })
        code = 500
    conn.close()

    response.headers.add('Access-Control-Allow-Origin', '*')
    return response, code

@app.route('/api/empresas', methods=['GET'])
def empresas():
    ano = request.args.get("ano")
    conn = psycopg2.connect(DSN)
    cur = conn.cursor()
    try:
        # Verificar se o ano já está cadastrado
        cur.execute("SELECT empresa.CNPJ, empresa.NOME, empresa.SETOR, participa.TOTAL_PAGO, participa.NOTA_FEEDBACK FROM PARTICIPA JOIN EMPRESA on (participa.empresa = empresa.cnpj) WHERE participa.evento={}".format(ano))
        data = cur.fetchall()
        response = jsonify({
            'data': data
        })
        code = 200
    except:
        response = jsonify({
            'error': 'Ocorreu um erro inesperado'
        })
        code = 500
    conn.close()

    response.headers.add('Access-Control-Allow-Origin', '*')
    return response, code
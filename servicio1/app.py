from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return 'Hola desde Servicio 1 prueba 3'

if __name__ == '__main__':
    app.run(host='0.0.0.0')
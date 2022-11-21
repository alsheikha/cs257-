'''
    app.py
    Amir Al-Sheikh
    17 November 2022

'''
import flask
import argparse
import api

app = flask.Flask(__name__, static_folder='static', template_folder='templates')
app.register_blueprint(api.api, url_prefix='/api')

@app.route('/') 
def home():
    return flask.render_template('index.html')

@app.route('/About-me') 
def about():
    return flask.render_template('about.html')

if __name__ == '__main__':
    parser = argparse.ArgumentParser('Video game sales application, including API & DB')
    parser.add_argument('host', help='the host to run on')
    parser.add_argument('port', type=int, help='the port to listen on')
    arguments = parser.parse_args()
    app.run(host=arguments.host, port=arguments.port, debug=True)

from flask import Flask, render_template
import requests

app = Flask(__name__)

@app.route('/')
def index():
    return render_template('index.html')

@app.route('/ping')
def ping_google():
    response = requests.get('https://www.google.com')
    if response.status_code == 200:
        return 'Ping sent to Google!'
    else:
        return 'Failed to send ping to Google.'

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)

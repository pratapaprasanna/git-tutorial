from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello_world():
    return "<p>Hello, devops!</p>"

@app.route("/new")
def hello_world_new():
    return "<p>Hello, devops from new!</p>"

@app.route("/new")
def hello_world_people():
    return "<p>Hello, devops from peopleop!</p>"

if __name__ == "__main__":
    app.run(debug=True, host='0.0.0.0', port="5004")

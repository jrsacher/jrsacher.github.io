from flask import Flask, render_template
import time  #https://docs.python.org/3/library/time.html

app = Flask(__name__)

@app.route("/", methods=["GET", "POST"])
def curr_time():
    now = time.strftime("%I:%M:%S", time.localtime())
    return render_template("index0.html", time=now)

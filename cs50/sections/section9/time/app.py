from flask import Flask, render_template
import time

app = Flask(__name__)


@app.route("/", methods=["GET", "POST"])
def curr_time():
    # https://docs.python.org/3/library/time.html#time.strftime
    now = time.strftime("%I:%M:%S %p", time.localtime())
    return render_template("index0.html", time=now)


# What should this return? What does it return?
# What does this tell you about CS50 codespace?
# What would be an improvement?

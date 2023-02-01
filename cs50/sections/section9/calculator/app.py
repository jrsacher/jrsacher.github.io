from flask import Flask, redirect, render_template, request

app = Flask(__name__)


@app.route("/", methods=["GET", "POST"])
def index():
    if request.method == "GET":
        return render_template("index.html", answer=None)

    num1 = int(request.form.get("num1"))
    num2 = int(request.form.get("num2"))
    if not num1 or not num2:
        return redirect("/")

    if "add" in request.form:
        operation = "+"
        answer = num1 + num2
    elif "subtract" in request.form:
        operation = "-"
        answer = num1 - num2
    elif "multiply" in request.form:
        operation = "×"
        answer = num1 * num2
    elif "divide" in request.form:
        operation = "÷"
        answer = num1 / num2

    return render_template(
        "index.html",
        answer=answer,
        num1=num1,
        num2=num2,
        operation=operation,
    )

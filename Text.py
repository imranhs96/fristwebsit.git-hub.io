import flask
from flask import Flask, render_template, request
import mysql.connector

app = flask.Flask(__name__)


@app.route('/')
def main():

    return flask.render_template('index.html')
@app.route('/login.html')
def sing():
  return flask.render_template('login.html')


@app.route('/loginvalidation',methods=['POST','GET'])
def loginvalidation():
    mybd = mysql.connector.connect(
        host="localhost",
        user='root',
        password='',
        database='texttable',
        charset='utf8'
    )
    mycursor = mybd.cursor()
    if flask.request.method == 'POST':
        re = flask.request.form
        email = re['Email']
        password = re['Password']
        if '' not in [email,password]:
            mycursor.execute("select * from results where email='"+email+"'and password='"+password+"'")
            r = mycursor.fetchall()
        else:
            return flask.render_template('/sh.html')
        count = mycursor.rowcount
        if count == 1:
            return flask.render_template('/succes.html')

        else:
            return flask.render_template('/login.html')
    mybd.commit()
    mycursor.close()


@app.route('/resgist.html')
def rest():
    return flask.render_template("resgist.html")


@app.route('/result', methods=['POST', 'GET'])
def result():
    mybd = mysql.connector.connect(
        host="localhost",
        user='root',
        password='',
        database='texttable',
        charset='utf8'
    )
    mycursor = mybd.cursor()
    if flask.request.method == 'POST':
        resul = flask.request.form.to_dict()
        name = str(resul['Name'])
        phone = str(resul['Phone'])
        dob = str(resul['DOB'])
        sex = str(resul['Sex'])
        email = str(resul['Email'])
        password=str(resul['Password'])
        repassword = str(resul['Repassword'])
        if "" not in [name, phone, dob, sex, email, password, repassword]:
            if password == repassword:
                mycursor.execute('insert into results(name,phone,dob,email,sex,password,repassword)values(%s,%s,%s,%s,%s,%s,%s)',(name,phone,dob,email,sex,password,repassword))
                mybd.commit()
                mycursor.close()
            else:
                return flask.render_template('sh1.html')
        else:
            return flask.render_template('sh.html')

        return flask.render_template('login.html', result=resul)


app.run(debug=True)

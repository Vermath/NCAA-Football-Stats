from flask import Flask, render_template, redirect, jsonify
from flask_pymongo import PyMongo
import pymongo
# import nfldatapull
from bson.json_util import dumps

app = Flask(__name__)
# mongo = PyMongo(app, uri="mongodb://localhost:27017/sportsball")

conn = "mongodb://localhost:27017"
client = pymongo.MongoClient(conn)
# # connect to mongo db and collection
db = client.sportsball
offense = db.offense
defense = db.defense
misc = db.misc
# anythingelse = nfldatapull.pull_data()
# sports.insert_many(anythingelse)

@app.route("/")
def home():
    # Find one record of data from the mongo database
    off_data = offense.find()
    off_list = list(off_data)

    def_data = defense.find()
    def_list = list(def_data)

    misc_data = misc.find()
    misc_list = list(misc_data)
    
    # Return template and data
    return render_template("index.html", off_db=off_list, def_db=def_list, misc_db=misc_list)

@app.route("/plots")
def plots():
    # Find one record of data from the mongo database
    off_data = offense.find()
    off_list = list(off_data)

    def_data = defense.find()
    def_list = list(def_data)

    misc_data = misc.find()
    misc_list = list(misc_data)
    
    # Return template and data
    return render_template("plots.html", off_db=off_list, def_db=def_list, misc_db=misc_list)

@app.route("/greensock")
def greensock():
    # Find one record of data from the mongo database
    off_data = offense.find()
    off_list = list(off_data)

    def_data = defense.find()
    def_list = list(def_data)

    misc_data = misc.find()
    misc_list = list(misc_data)
    
    # Return template and data
    return render_template("greensock.html", off_db=off_list, def_db=def_list, misc_db=misc_list)


if __name__ == "__main__":
    app.run(debug=True)


# "C:\Program Files\MongoDB\Server\4.4\bin\mongod.exe" --dbpath="c:\data\db"
# "C:\Program Files\MongoDB\Server\4.4\bin\mongo.exe"
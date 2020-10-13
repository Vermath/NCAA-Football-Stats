from flask import Flask, render_template, redirect
from flask_pymongo import PyMongo
import pymongo
import nfldatapull

app = Flask(__name__)
# mongo = PyMongo(app, uri="mongodb://localhost:27017/sportsball")

conn = "mongodb://localhost:27017"
client = pymongo.MongoClient(conn)
# # connect to mongo db and collection
db = client.sportsball
sports = db.sportsball
# anythingelse = nfldatapull.pull_data()
# sports.insert_many(anythingelse)

@app.route("/")
def home():
    # Find one record of data from the mongo database
    nfl_data = sports.find()
    # Return template and data
    return render_template("index.html", nfl=nfl_data)



# Route that will trigger the scrape function
# @app.route("/scrape")
# def scrape():
#     # Run the scrape function
#     sportsball = nfldatapull.pull_data()
#     # Update the Mongo database using update and upsert=True
#     mongo.db.collection.update({}, sportsball, upsert=True)
#     print("finished")
#     # Redirect back to home page
#     return redirect("/")
if __name__ == "__main__":
    app.run(debug=True)
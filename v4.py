#from sys import argv
#verkefni 4




#from sys import argv
import bottle
from bottle import*
bottle.debug(True)
import urllib.request, json


with open("gengi.json","r") as skra:
    gengi = json.load(skra)
print(gengi)


with urllib.request.urlopen("http://apis.is/currency") as url:
    data = json.loads(url.read().decode())

@route("/")
def index():
    return """
    <h1> Verkefni 4 </h1>
    <a href="/a">Json</a> - 
    <a href="/b">API</a>
    """


@route("/a")
def index():
    return template("index.tpl")


@route("/b")
def index():
    return template("index2.tpl", data = data)

#@route("/Static/<skra>")
#def static_skra(skra):
#   return static_file(skra, root='/static')






@error(404)
def villa(error):
    return "<h2 style = color:red>dessi sida finnst ekki</h2>"



#run(debug=True)

run(host="0.0.0.0", port=os.environ.get('PORT'))
#bootle.run(host='0.0.0.0', port=argv[1])

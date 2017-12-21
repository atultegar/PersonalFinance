from urllib2 import Request, urlopen
import re
url = 'https://www.amfiindia.com/spages/NAVALL.txt'
req = Request(url)
resp = urlopen(req)
nav = resp.read()
lines1 = nav.split("\n")
schCode1 = '112323'

class getQuote(object):
    def __init__(self, lines, schCode):
        for line in lines:
            qline = line.split(";")
            if qline[0] == schCode:
                self.title = qline[3]
                self.value = qline[4]

        def getValue(self):
            return self.title
            return self.value

app = getQuote(lines1, schCode1)
print "Title : ", app.title
print "NAV   : ", app.value
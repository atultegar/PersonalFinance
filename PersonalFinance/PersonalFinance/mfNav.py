from urllib2 import Request, urlopen
import re
url = 'https://www.amfiindia.com/spages/NAVALL.txt'
req = Request(url)
resp = urlopen(req)
nav = resp.read()
lines1 = nav.split("\n")
schCode1 = ['112323', '119659', '125597', '119661', '119413']

class getQuote(object):
    def __init__(self, lines, schCode):
        for line in lines:
            qline = line.split(";")
            if qline[0] == schCode:
                self.code = qline[0]
                self.title = qline[3]
                self.value = qline[4]

        def getValue(self):
            return self.code
            return self.title
            return self.value

dict = {}
for schCode in schCode1:
    app = getQuote(lines1, schCode)
    dict[app.code] = app.value
    print "Title : ", app.title
    print "NAV   : ", app.value
print dict
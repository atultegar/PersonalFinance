from urllib2 import Request, urlopen
import re
url = 'https://www.amfiindia.com/spages/NAVALL.txt'
req = Request(url)
resp = urlopen(req)
nav = resp.read()
lines1 = nav.split("\n")
schCode1 = ['112323', '119659', '125597', '119661','119413', '103633', '118540']

class getQuote(object):
    def __init__(self, schCode):
        for line in lines1:
            qline = line.split(";")
            if qline[0] == schCode:
                self.code = int(qline[0])
                self.title = qline[3]
                self.value = float(qline[4])

        def getValue(self):
            return self.code
            return self.title
            return self.value

dict = {}
for schCode in schCode1:
    app = getQuote(schCode)
    dict[app.code] = app.value
 
print dict
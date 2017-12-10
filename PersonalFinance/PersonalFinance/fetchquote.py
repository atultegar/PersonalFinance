import clr
clr.AddReference ('System.IO')
from System.IO import StreamWriter, Path
from urllib2 import Request, urlopen
import re
url = 'https://www.amfiindia.com/spages/NAVAll.txt'
req = Request(url)
resp = urlopen(req)
content = resp.read()

handle = open('NAVall.txt', 'w')
handle.write(content)
handle.close()

handle = open('NAVall.txt', 'r')
nav = handle.read()
handle.close()

#Scheme Code;ISIN Div Payout/ ISIN Growth;ISIN Div Reinvestment;Scheme Name;Net Asset Value;Repurchase Price;Sale Price;Date
lines = nav.split("\n")
for line in lines:
    qline = line.split(";")
    if qline[0] == '141007': #Scheme Code
        schemeCode = qline[0]
        isin = qline[1]
        isin2 = qline[2]
        schemeName = qline[3]
        schemeNav = qline[4]
        schemeRepur = qline[5]
        schemeSale = qline[6]
        schemeDate = qline[7]
        print 'Scheme Code: ', schemeCode
        print 'Net Asset Value: ', schemeNav
        print 'Date: ', schemeDate
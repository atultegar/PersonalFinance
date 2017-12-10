from urllib2 import Request, urlopen
import re
url = 'https://www.amfiindia.com/spages/NAVAll.txt'
req = Request(url)
resp = urlopen(req)
nav = resp.read()
title = 'Scheme Code;ISIN Div Payout/ ISIN Growth;ISIN Div Reinvestment;Scheme Name;Net Asset Value;Repurchase Price;Sale Price;Date'
titleList = title.split(";")
lines = nav.split("\n")
for line in lines:
    qline = line.split(";")
    if qline[0] == '141007': #Scheme Code
        for i in range(len(qline)):
            titles = titleList[i]
            values = qline[i]
            print titles, ": ", values

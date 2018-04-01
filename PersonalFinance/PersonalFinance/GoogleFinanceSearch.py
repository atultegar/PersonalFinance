import urllib
from urllib2 import Request, urlopen
import re

url = 'https://finance.google.com/finance?q=aditya+birla+sun+life+pure+value+fund+direct+growth'

req =  Request(url)
resp = urlopen(req)
data = resp.read()
print data

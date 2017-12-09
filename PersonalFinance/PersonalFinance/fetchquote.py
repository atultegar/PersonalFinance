from urllib2 import Request, urlopen
url = 'https://www.amfiindia.com/spages/NAVAll.txt'
req = Request(url)
resp = urlopen(req)
content = resp.read()
print content

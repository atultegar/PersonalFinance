import sqlite3

class getDataset(object):
    def __init__(self):
        conn = sqlite3.connect("mfindia.db")
        curs = conn.cursor()

        curs.execute ("SELECT schemeType FROM schemeType")    
        schemeType = curs.fetchall()
        
        curs.execute ("SELECT schemeHouse FROM schemeHouse")
        schemeHouse = curs.fetchall()

        conn.close()

        self.schemeTypes = [i[0] for i in schemeType]
        self.schemeHouses = [j[0] for j in schemeHouse]
        
class getSchemes(object):
    def __init__(self, type1, house1):
        conn = sqlite3.connect("mfindia.db")
        curs = conn.cursor()
        curs.execute("SELECT schemeCode, schemeName FROM schemes WHERE schemeType=? AND schemeHouse=?", (type1, house1,))
        self.scheme = curs.fetchall()

        conn.close()
        

class getSchemeId(object):
    def __init__(self, schemeName):
        conn = sqlite3.connect("mfindia.db")
        curs = conn.cursor()
        curs.execute("SELECT schemeCode FROM schemes WHERE schemeName=?", (schemeName,))
        schemeId = curs.fetchall()
        schId = [i[0] for i in schemeId]
        conn.close()

        self.scheme = schId[0]


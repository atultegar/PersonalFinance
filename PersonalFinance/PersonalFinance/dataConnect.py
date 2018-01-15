import sqlite3
from System.Windows import MessageBox

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
        if (len(schId) != 0):
            self.scheme = schId[0]
        else:
            self.scheme = 0

class mfinsert(object):
    def __init__(self, schemeId, schemeName):
        conn = sqlite3.connect("test_finance.db")
        curs = conn.cursor()
        curs.execute('''CREATE TABLE IF NOT EXISTS tblMf (
                        schemeCode INTEGER PRIMARY KEY NOT NUll,
                        schemeName VARCHAR(255) NOT NULL)''')
        conn.commit()
        curs.execute("SELECT schemeCode, schemeName FROM tblMf WHERE schemeCode = ?", (schemeId,))
        result = curs.fetchone()

        if result:
            MessageBox.Show("Record already exists.\nPlease select different scheme", "Error")
        else:
            curs.execute("INSERT INTO tblMf (schemeCode, schemeName) values (?, ?)", (schemeId, schemeName))
            conn.commit()
            MessageBox.Show('Scheme Code: %s\r\nScheme Name: %s' %(schemeId, schemeName),"Test")
        conn.close()

class mflist(object):
    def __init__(self):
        conn = sqlite3.connect("test_finance.db")
        curs = conn.cursor()
        curs.execute("SELECT schemeCode, schemeName FROM tblMf")

        schemes = curs.fetchall()
        self.sch = [i[1] for i in schemes]
        conn.close()
        return self.sch

class mftrans(object):
    def __init__(self, invguid, fundname, invamount, invdate, folio):
        conn = sqlite3.connect("test_finance.db")
        cur = conn.cursor()
        cur.execute('''CREATE TABLE IF NOT EXISTS tblTrans (
                        guid VARCHAR(32) NOT NULL PRIMARY KEY,
                        fundName VARCHAR(255) NOT NULL,
                        amount DOUBLE NOT NULL,
                        date DATE NOT NULL,
                        folioNo VARCHAR(255))''')
        conn.commit()
        cur.execute("INSERT INTO tblTrans (guid, fundName, amount, date, folioNo) values (?, ?, ?, ?, ?)", (invguid, fundname, invamount, invdate, folio))
        conn.commit()
        MessageBox.Show("Transaction added successfully", "Test") 
import sqlite3

class getDataset(object):
    def __init__(self):
        conn = sqlite3.connect("mfindia.db")
        curs = conn.cursor()

        curs.execute ("SELECT schemeType FROM schemeType")    
        schemeType = curs.fetchall()
        
        curs.execute ("SELECT schemeHouse FROM schemeHouse")
        schemeHouse = curs.fetchall()

        self.schemeTypes = [i[0] for i in schemeType]
        self.schemeHouses = [j[0] for j in schemeHouse]
        
class getSchemes(object):
    def __init__(self, type1, house1):
        conn = sqlite3.connect("mfindia.db")
        curs = conn.cursor()
        #type1 = 'Open Ended Schemes (ELSS)'
        #house1 = 'Axis Mutual Fund'
        query = str.format("SELECT schemeCode, schemeName FROM schemes WHERE schemeType= '{0}' AND schemeHouse= '{1}'", type1, house1)
        curs.execute(query)
        self.scheme = curs.fetchall()
        #self.schemes = [i[1] for i in scheme]
        #self.schemeId = [i[0] for i in scheme]
        
    
#dataset = getDataset()
#typeValues = dataset.schemeTypes
#for typeValue in typeValues:
#    print typeValue

#houseValues = dataset.schemeHouses
#for houseValue in houseValues:
#    print houseValue
#
#type1 = 'Open Ended Schemes (ELSS)'
#house1 = 'Axis Mutual Fund'
#schemedata = getSchemes(type1, house1)
##schemeIds = schemedata.schemeId
#schemeValues = schemedata.scheme
#for key, data in schemeValues:
#    print key,":",data

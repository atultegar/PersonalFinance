import sqlite3
from System.IO import File

def insert_data(db_conn, schemeCode, schemeType, schemeHouse, schemeIsin, schemeName):
    curs = db_conn.cursor()
    curs.execute('''CREATE TABLE IF NOT EXISTS schemes (
                    schemeCode INTEGER NOT NULL,
                    schemeType VARCHAR(255),
                    schemeHouse VARCHAR(255),
                    schemeIsin VARCHAR(15) NOT NULL,
                    schemeName VARCHAR(255) NOT NULL)''')
    db_conn.commit()
    curs.execute("INSERT INTO schemes (schemeCode, schemeType, schemeHouse, schemeIsin, schemeName) values (?, ?, ?, ?, ?)",
                 (schemeCode, schemeType, schemeHouse, schemeIsin, schemeName))
    db_conn.commit()

if __name__ == "__main__":
    conn = sqlite3.connect("mfindia.db")
    handle = open('NAVAll.txt', 'r')
    text = handle.read()
    lines = text.split("\n")
    for line in lines:
        qline = []
        qline = line.split(";")
        if len(qline) > 1:
            schCode = qline[0]
            schType = "NA"
            schHouse = "NA"
            schIsin = qline[1]
            schName = qline[3]
            insert_data(conn, schCode, schType, schHouse, schIsin, schName)
            
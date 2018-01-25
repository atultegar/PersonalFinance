import sqlite3
import clr
import uuid

class insertData(object):
    def __init__(self, subgName, gGuid):
        conn = sqlite3.connect("test_finance.db")
        curs = conn.cursor()

        curs.execute('''CREATE TABLE IF NOT EXISTS tblSubGroup(
                        guid VARCHAR(32) PRIMARY KEY NOT NULL,
                        subgroupName VARCHAR(255) NOT NULL,
                        groupName VARCHAR(255) NOT NULL,
                            FOREIGN KEY(groupName) REFERENCES tblGroup(guid)
                        )''')
        conn.commit()

        curs.execute("SELECT subgroupName FROM tblSubGroup WHERE subgroupName = ?", (subgName,))
        result = curs.fetchone()

        if result:
           Print("Record already exists.")
        else:
            guid = str(uuid.uuid4().hex)
            curs.execute("INSERT INTO tblSubGroup (guid, subgroupName, groupName) values (? ,?, ?)", (guid, subgName, gGuid))
            conn.commit()
        conn.close()

def main():
    subgroups = {'Bank Accounts':'Current Assets', 'Bank OD A/c':'Loans (Liability)',
                 'Cash-in-hand':'Current Assets', 'Deposits (Asset)':'Current Assets',
                 'Duties & Taxes':'Current Liabilities', 'Loans & Advances (Asset)':'Current Assets',
                 'Provisions':'Current Liabilities', 'Reserves & Surplus':'Capital Account',
                 'Secured Loans':'Loans (Liability)', 'Stock-in-hand':'Current Assets',
                 'Sundry Creditors':'Current Liabilities', 'Sundry Debtors':'Current Assets',
                 'Unsecured Loans':'Loans (Liability)'}
    for key, value in subgroups.iteritems():
        conn1 = sqlite3.connect("test_finance.db")
        curs1 = conn1.cursor()
        curs1.execute("SELECT guid FROM tblGroup WHERE groupName = ?", (value,))
        result1 = curs1.fetchall()
        guid1 = [i[0] for i in result1]
        guid2 = guid1[0]
        insertData(key,str(guid2)) 

if __name__ == "__main__":
    main()
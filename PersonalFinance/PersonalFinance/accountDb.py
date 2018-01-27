import sqlite3
import clr
import uuid

class insertData(object):
    def __init__(self, gName):
        conn = sqlite3.connect("test_finance.db")
        curs = conn.cursor()

        curs.execute('''CREATE TABLE IF NOT EXISTS tblGroup(
                        guid VARCHAR(32) PRIMARY KEY NOT NULL,
                        groupName VARCHAR(255) NOT NULL)''')
        conn.commit()

        curs.execute("SELECT groupName FROM tblGroup WHERE groupName = ?", (gName,))
        result = curs.fetchone()

        if result:
           Print("Record already exists.")
        else:
            guid = str(uuid.uuid4().hex)
            curs.execute("INSERT INTO tblGroup (guid, groupName) values (? ,?)", (guid, gName))
            conn.commit()
        conn.close()

def main():
    groups = ['Branch / Divisions', 'Capital Account', 'Current Assets', 'Current Liabilities',
              'Direct Expenses', 'Direct Incomes', 'Fixed Assets', 'Indirect Expenses',
              'Indirect Incomes', 'Investments', 'Loans (Liability)', 'Misc. Expenses (ASSET)',
              'Purchase Accounts', 'Sales Accounts', 'Suspense A/c']
    for groupName in groups:
        insertData(groupName) 

if __name__ == "__main__":
    main()
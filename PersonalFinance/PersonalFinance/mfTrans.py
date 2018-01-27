import wpf
import clr
import dataConnect

from System.Windows import (
    Application, Window, MessageBox
)
from System.Windows.Controls import *

from System.Collections.ObjectModel import *
from System.ComponentModel import *

class mfTrans(Window):
    def __init__(self):
        wpf.LoadComponent(self, 'mfTrans.xaml')
        schemedata = dataConnect.mflist()
        schemes = schemedata.sch
        for scheme in schemes:
            self.ComboBox1.Items.Add(str(scheme))
    

    
    def InvAmount_TextChanged(self, sender, e):
<<<<<<< HEAD
        amount = self.InvAmount.Text
        nav = self.NAV.Text
        MessageBox.Show(type(amount))
        #if (nav != 0):
        #    units = amount/nav
        #else:
        #    units = 0
        #self.Units.Text = str(units)
=======
        if (self.InvAmount.Text != ""):
            amount = float(self.InvAmount.Text)
        else:
            amount = 0.00
        if (self.NAV.Text != ""):
            nav = float(self.NAV.Text)
        else:
            nav = 0.00
        if (nav != 0):
            units = amount/nav
        else:
            units = 0
        self.Units.Text = str(units)
>>>>>>> dd2a842d30474963b15048e7f8d9e4fdfdf04909

window = mfTrans()
app = Application()
app.Run(window)

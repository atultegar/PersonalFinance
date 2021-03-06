﻿import clr
import wpf
import dataConnect
from System.Windows import MessageBox
#import mfNav

clr.AddReference("PresentationFramework")
clr.AddReference("PresentationCore")

from System.IO import File
from System.Windows.Markup import XamlReader

from System.Windows import (
    Application, Window
)
from System.Windows.Controls import *

from System.Collections.ObjectModel import *
from System.ComponentModel import *

            
class main(Window):
    def __init__(self):
        wpf.LoadComponent(self, 'main.xaml')
    
    def ComboBox1_SelectionChanged(self, sender, e):
        schtype = self.ComboBox1.SelectedItem
        schhouse = self.ComboBox2.SelectedItem
        self.ComboBox3.Items.Clear()
        self.Textbox1.Text = ""
        if (schtype != ""):
            schemedataset = dataConnect.getSchemes(schtype, schhouse)
            schemevalues = schemedataset.scheme
            for schemeid, schemevalue in schemevalues:
                self.ComboBox3.Items.Add(str(schemevalue))
                
    
    def ComboBox3_SelectionChanged(self, sender, e):
        self.Textbox1.Text = ""
        schName = self.ComboBox3.SelectedItem
        if (schName != ""):
            schemedataset2 = dataConnect.getSchemeId(schName)
            schemeIdvalue = schemedataset2.scheme
            self.Textbox1.Text = str(schemeIdvalue)
    
    def Button_Add_Click(self, sender, e):
        schemeCode = int(self.Textbox1.Text)
        schemeName = self.ComboBox3.SelectedItem
        mfconnect = dataConnect.mfinsert(schemeCode, schemeName)
    
    def Button_Refresh_Click(self, sender, e):
        self.ListBox1.Items.Clear()
        schemes = dataConnect.mflist()
        schemevalues = schemes.sch
        for schemevalue in schemevalues:
            self.ListBox1.Items.Add(schemevalue)

        #MessageBox.Show('Scheme Code: %s\r\nScheme Name: %s' %(schemeCode, schemeName),"Test")

        #schNavData = mfNav.getQuote(str(schemeIdvalue))
        #schNavValue = schNavData.value
        #self.TextBox2.Text = str(schNavValue)


        
window = main()
app = Application()
combo1 = ComboBox()
dataset = dataConnect.getDataset()
datavalues = dataset.schemeTypes

#house1 = 'Axis Mutual Fund'
#schemedataset = dataConnect.getSchemes(type1, house1)
#schemevalues = schemedataset.scheme

for datavalue in datavalues:
    combo1.Items.Add(str(datavalue))

combo2 = ComboBox()
housevalues = dataset.schemeHouses
for housevalue in housevalues:
    combo2.Items.Add(str(housevalue))

window.ComboBox1.ItemsSource = combo1.Items
window.ComboBox2.ItemsSource = combo2.Items

app.Run(window)

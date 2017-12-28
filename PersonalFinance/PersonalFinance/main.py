import clr
import wpf
import dataConnect

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
    
window = main()
app = Application()
combo1 = ComboBox()
dataset = dataConnect.getDataset()
datavalues = dataset.schemeTypes

type1 = 'Open Ended Schemes (ELSS)'
house1 = 'Axis Mutual Fund'
schemedataset = dataConnect.getSchemes(type1, house1)
schemevalues = schemedataset.scheme

for datavalue in datavalues:
    item = ComboBoxItem()
    item.Content = datavalue
    combo1.Items.Add(item)

combo2 = ComboBox()
housevalues = dataset.schemeHouses
for housevalue in housevalues:
    item = ComboBoxItem()
    item.Content = housevalue
    combo2.Items.Add(item)

combo3 = ComboBox()
for schemeid, schemevalue in schemevalues:
    item = ComboBoxItem()
    item.Content = schemevalue
    combo3.Items.Add(item)

listbox = ListBox()
for dataId, datav in schemevalues:
    litem = ListBoxItem()
    litem.Content = dataId
    listbox.Items.Add(litem)

window.ComboBox1.ItemsSource = combo1.Items
window.ComboBox2.ItemsSource = combo2.Items
window.ComboBox3.ItemsSource = combo3.Items
window.ListBox1.ItemsSource = listbox.Items

app.Run(window)

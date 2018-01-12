import wpf
import dataConnect

from System.Windows import Window

class getData(Window):
    def __init__(self):
        wpf.LoadComponent(self, 'getData.xaml')

window = getData()
dataset = dataConnect.getDataset()
datavalues = dataset.schemeTypes

window.ComboBox1.ItemsSource = datavalues

        



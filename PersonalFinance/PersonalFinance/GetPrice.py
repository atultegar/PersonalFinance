import wpf

from System.Windows import Window

class GetPrice(Window):
    def __init__(self):
        wpf.LoadComponent(self, 'GetPrice.xaml')

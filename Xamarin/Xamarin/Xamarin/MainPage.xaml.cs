using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using Xamarin.Forms;

namespace Xamarin
{
    public partial class MainPage : ContentPage
    {
        public MainPage()
        {
            InitializeComponent();
            switchPageButton.Clicked += SwitchPageButton_Clicked;
        }

        private async void SwitchPageButton_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushModalAsync(new SecondPage());
        }
    }
}

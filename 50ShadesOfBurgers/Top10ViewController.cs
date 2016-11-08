using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class Top10ViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;

        SortedSet<String> cities;
        SortedSet<String> countries;
        List<Resto> restos;
        List<Burger> burgers;

        UIImage barIcon;

        public Top10ViewController (IntPtr handle) : base (handle)
		{
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            restos = new List<Resto>();
            burgers = new List<Burger>();
            cities = new SortedSet<String>();
            countries = new SortedSet<String>();
            restos = ad.restos;
            setupPicker();
            
        }

       

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

            Buttons.setupButtons(btnWorldTop);
            Buttons.setupButtons(btnCountryTop);
            Buttons.setupButtons(btnCityTop);

			this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				this.PerformSegue("goToMenu1", this);
			}), true);

        }

        private void setupPicker()
        {
            
            foreach(Resto resto in restos)
            {
                cities.Add(resto.RestoCity);
                countries.Add(resto.RestoCountry);
            }

            pickerCity.Model = new ListPickerViewModel<String>(cities);
            pickerCountry.Model = new ListPickerViewModel<String>(countries);
        }

        

        public  override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            String name = "";
            String choice = "";

			var top10tableController = segue.DestinationViewController as Top10TableViewController;

            if (segue.Identifier == "goToWorldTop10Table")
            {
                name = "";
                choice = "world";
            }

            if (segue.Identifier == "goToCountryTop10Table")
            {
                var pickerItemCountry = pickerCountry.Model as ListPickerViewModel<String>;
                name = pickerItemCountry.SelectedItem;
                choice = "country";
            }

            if (segue.Identifier == "goToCityTop10Table")
            {
                var pickerItemCity = pickerCity.Model as ListPickerViewModel<String>;
                name = pickerItemCity.SelectedItem;
                choice = "city";
            }

            if (top10tableController != null)
                {
                top10tableController.Name = name;
                top10tableController.Choice = choice;

                }
            




        }

        

    }
}

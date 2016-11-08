using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Text;
using System.Threading.Tasks;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class QuestionnaireChoixRestoViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;

     /*   public Resto selectedResto;

        public List<Resto> restos;
        public List<Burger> burgers;
       // public List<Country> allCountries;
        public SortedSet<String> burgerNames;
		public List<String> restoCountry;
        public SortedSet<String> restoName, restoCity, countries;*/

        LoadingOverlay loadingOverlay;

		public QuestionnaireChoixRestoViewController (IntPtr handle) : base (handle)
		{

		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

		//	lblChoose.Font = UIFont.FromName("HomemadeApple", 19f);

           /* restos = new List<Resto>();
            burgers = new List<Burger>();
            

            restos = ad.restos;
			restoCountry = new List<String>();
            restoCity = new SortedSet<String>();
            restoName = new SortedSet<String>();
            burgerNames = new SortedSet<String>();

            restoCountry = getCountryList(restos);
            CreateCountryPicker(restoCountry);
            selectedResto = new Resto();
            btnStart.TouchUpInside += HandleBtnStart;

			AutoCompleteTextFieldManager.Add(this, txtCountry, restoCountry); */
        }

      
       

       /* private void HandleBtnStart(object sender, EventArgs e)
        {
            if(string.IsNullOrEmpty(txtBurger.Text) && string.IsNullOrEmpty(txtBurgerNew.Text))
            {
                UIAlertView alertActive = new UIAlertView()
                {
                    Title = "Pas de Burger!",
                    Message = "Veuillez choisir un Burger dans la liste ou en cr¨¦er un nouveau!"
                };
                alertActive.AddButton("OK");
                alertActive.Show();
            } else if(!string.IsNullOrEmpty(txtBurger.Text) && !string.IsNullOrEmpty(txtBurgerNew.Text))
            {
                UIAlertView alertActive = new UIAlertView()
                {
                    Title = "Trop de Burgers!",
                    Message = "Veuillez choisir un Burger dans la liste ou en cr¨¦er un nouveau!"
                };
                alertActive.AddButton("OK");
                alertActive.Show();
            }
            else
            {
                //make new Resto & Burger object
                prepareRestoBurger();
                this.PerformSegue("goToQuestOne", this);
            }
            


        }*/

       /* private void prepareRestoBurger()
        {
            if (string.IsNullOrEmpty(txtBurgerNew.Text)) { 
                foreach (Burger burger in burgers)
                {
                    if (burger.BurgerName.Equals(txtBurger.Text)) ad.burger = burger ;
                }

                foreach (Resto resto in restos)
                {
                    if ((resto.RestoName.Equals(txtName.Text)) && (resto.RestoCity.Equals(txtCity.Text))) ad.resto = resto;
                }
            } else
            {
                Resto newResto = new Resto();
                Burger newBurger = new Burger();
                newResto.RestoId = 1;
                newResto.RestoCountry = txtCountryNew.Text;
                newResto.RestoCity = txtCityNew.Text;
                newResto.RestoName = txtRestoNew.Text;
                newResto.RestoNew = true;
                newBurger.BurgerId = 1;
                newBurger.BurgerName = txtBurgerNew.Text;

                ad.burger = newBurger;
                ad.resto = newResto;

            }

            ad.connection.updateRestoBurger(ad.resto, ad.burger);

        }*/
           

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

            this.txtBurgerNew.ShouldReturn += (textField) => {
                textField.ResignFirstResponder();
                return true;
            };

			txtName.Layer.BorderColor = UIColor.White.CGColor;
			txtName.Layer.BorderWidth = 0.5f;
			txtName.Layer.CornerRadius = 8.0f;
			txtName.Layer.MasksToBounds = true;
			txtBurger.Layer.BorderColor = UIColor.White.CGColor;
			txtBurger.Layer.BorderWidth = 0.5f;
			txtBurger.Layer.CornerRadius = 8.0f;
			txtBurger.Layer.MasksToBounds = true;
			txtBurgerNew.Layer.BorderColor = UIColor.White.CGColor;
			txtBurgerNew.Layer.BorderWidth = 0.5f;
			txtBurgerNew.Layer.CornerRadius = 8.0f;
			txtBurgerNew.Layer.MasksToBounds = true;



            this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) => {
                this.PerformSegue("goToMenu", this);
            }), true);


           // getCountries();
        }

     /*   private void CreateCountryPicker(SortedSet<String> existingCountries)
        {
            var picker = new UIPickerView();
            picker.Model = new ListPickerViewModel<String>(existingCountries);
            picker.ShowSelectionIndicator = true;
            

            UIToolbar toolbar = new UIToolbar();
            toolbar.BarStyle = UIBarStyle.Black;
            toolbar.Translucent = true;
            toolbar.SizeToFit();

            // Event Handler for Done Button on Drop Down
            UIBarButtonItem doneButton = new UIBarButtonItem("Done", UIBarButtonItemStyle.Done, (s, e) =>
            {
                foreach (UIView view in this.View.Subviews)
                {
                    if (view.IsFirstResponder)
                    {
                        UITextField textview = (UITextField)view;
                        var pickerItem = picker.Model as ListPickerViewModel<String>;
                        textview.Text = pickerItem.SelectedItem;
                        restoCity = getCityList(restos, textview.Text);
                        CreateCityPicker(restoCity);
                        txtCity.Enabled = true;
                        textview.ResignFirstResponder();
                    }
                }

            });
            toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

            txtCountry.InputView = picker ;
            txtCountry.InputAccessoryView = toolbar;
        }

        private void CreateCityPicker(SortedSet<String> cities)
        {
            var picker = new UIPickerView();
            picker.Model = new ListPickerViewModel<String>(cities);
            picker.ShowSelectionIndicator = true;


            UIToolbar toolbar = new UIToolbar();
            toolbar.BarStyle = UIBarStyle.Black;
            toolbar.Translucent = true;
            toolbar.SizeToFit();

            // Event Handler for Done Button on Drop Down
            UIBarButtonItem doneButton = new UIBarButtonItem("Done", UIBarButtonItemStyle.Done, (s, e) =>
            {
                foreach (UIView view in this.View.Subviews)
                {
                    if (view.IsFirstResponder)
                    {
                        UITextField textview = (UITextField)view;
                        var pickerItem = picker.Model as ListPickerViewModel<String>;
                        textview.Text = pickerItem.SelectedItem;
                        restoName = getNameList(restos, textview.Text);
                        CreateNamePicker(restoName);
                        txtName.Enabled = true;
                        textview.ResignFirstResponder();
                        
                        
                    }
                }

            });
            toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

            txtCity.InputView = picker;
            txtCity.InputAccessoryView = toolbar;
        }

        private void CreateNamePicker(SortedSet<String> names)
        {
            var picker = new UIPickerView();
            picker.Model = new ListPickerViewModel<String>(names);
            picker.ShowSelectionIndicator = true;


            UIToolbar toolbar = new UIToolbar();
            toolbar.BarStyle = UIBarStyle.Black;
            toolbar.Translucent = true;
            toolbar.SizeToFit();

            // Event Handler for Done Button on Drop Down
            UIBarButtonItem doneButton = new UIBarButtonItem("Done", UIBarButtonItemStyle.Done, async (s, e) =>
            {
                foreach (UIView view in this.View.Subviews)
                {
                    if (view.IsFirstResponder)
                    {
                        UITextField textview = (UITextField)view;
                        var pickerItem = picker.Model as ListPickerViewModel<String>;
                        textview.Text = pickerItem.SelectedItem;
                        getBurgers();
                        var bounds = UIScreen.MainScreen.Bounds;
                        loadingOverlay = new LoadingOverlay(bounds, "Getting Burgers...");  
                        View.Add(loadingOverlay);
                        await Task.Delay(1000);
                        loadingOverlay.Hide();
                        burgerNames = getBurgerSortedNameList(burgers);
                        CreateBurgerPicker(burgerNames);
                        txtBurger.Enabled = true;
                        textview.ResignFirstResponder();
                    }
                }

            });
            toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

            txtName.InputView = picker;
            txtName.InputAccessoryView = toolbar;
        }

        private void CreateBurgerPicker(SortedSet<String> burgerNames)
        {
            var picker = new UIPickerView();
            picker.Model = new ListPickerViewModel<String>(burgerNames);
            picker.ShowSelectionIndicator = true;


            UIToolbar toolbar = new UIToolbar();
            toolbar.BarStyle = UIBarStyle.Black;
            toolbar.Translucent = true;
            toolbar.SizeToFit();

            // Event Handler for Done Button on Drop Down
            UIBarButtonItem doneButton = new UIBarButtonItem("Done", UIBarButtonItemStyle.Done, (s, e) =>
            {
                foreach (UIView view in this.View.Subviews)
                {
                    if (view.IsFirstResponder)
                    {
                        UITextField textview = (UITextField)view;
                        var pickerItem = picker.Model as ListPickerViewModel<String>;
                        textview.Text = pickerItem.SelectedItem;
                        textview.ResignFirstResponder();
                    }
                }

            });
            toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

            txtBurger.InputView = picker;
            txtBurger.InputAccessoryView = toolbar;
        }


		private List<String> getCountryList(List<Resto> restos)
        {
			List<String> countries = new List<String>();
            foreach (Resto resto in restos)
            {
				if(!countries.Contains(resto.RestoCountry)) countries.Add(resto.RestoCountry);

            }
			countries.Sort();
            return countries;
        }


        private SortedSet<String> getCityList(List<Resto> restos, String country)
        {
            SortedSet<String> cities = new SortedSet<String>();
            foreach (Resto resto in restos)
            {
                if(resto.RestoCountry.Equals(country))
                cities.Add(resto.RestoCity);

            }
            return cities;
        }

        private SortedSet<String> getNameList(List<Resto> restos, String city)
        {
            SortedSet<String> names = new SortedSet<String>();
            foreach (Resto resto in restos)
            {
                if (resto.RestoCity.Equals(city))
                    names.Add(resto.RestoName);

            }
            return names;
        }

        private SortedSet<String> getBurgerSortedNameList(List<Burger> burgersList)
        {
            SortedSet<String> burgerNames = new SortedSet<String>();
            foreach (Burger burger in burgers)
            {
                burgerNames.Add(burger.BurgerName);
            }
            return burgerNames;
        }



       
         public void getBurgers()
        {
            
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var json = e.Result;
                burgers = JsonConvert.DeserializeObject<List<Burger>>(json);
            });

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getBurger.php"), String.Format("RestoCity={0}&RestoName={1}", txtCity.Text, txtName.Text));
        }

        private void CreateGeneralCountryPicker(SortedSet<String> Countries)
        {
            var picker = new UIPickerView();
            picker.Model = new ListPickerViewModel<String>(Countries);
            picker.ShowSelectionIndicator = true;


            UIToolbar toolbar = new UIToolbar();
            toolbar.BarStyle = UIBarStyle.Black;
            toolbar.Translucent = true;
            toolbar.SizeToFit();

            // Event Handler for Done Button on Drop Down
            UIBarButtonItem doneButton = new UIBarButtonItem("Done", UIBarButtonItemStyle.Done, (s, e) =>
            {
                foreach (UIView view in this.View.Subviews)
                {
                    if (view.IsFirstResponder)
                    {
                        UITextField textview = (UITextField)view;
                        var pickerItem = picker.Model as ListPickerViewModel<String>;
                        textview.Text = pickerItem.SelectedItem;
                        textview.ResignFirstResponder();
                    }
                }

            });
            toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

            txtCountryNew.InputView = picker;
            txtCountryNew.InputAccessoryView = toolbar;
        }

        private void getCountries()
        {
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.DownloadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                allCountries = new List<Country>();
                countries = new SortedSet<String>();
                var json = e.Result;
                allCountries = JsonConvert.DeserializeObject<List<Country>>(json);

                foreach(Country country in allCountries)
                {
                    countries.Add(country.CountryName);
                }
                CreateGeneralCountryPicker(countries);


            });

            webClient.DownloadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getCountries.php"));
        }*/

    }
}

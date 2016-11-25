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

		//  public Resto selectedResto;

		  // public List<Resto> restos;
		   public List<Burger> burgers;
		   public SortedSet<String> burgerNames;
		string placeId;
        LoadingOverlay loadingOverlay;
		LocationPredictionClass objAutoCompleteLocationClass;
		string strAutoCompleteQuery;
		LocationAutoCompleteTableSource objLocationAutoCompleteTableSource;
		bool noBurgersFlag = false;

		public QuestionnaireChoixRestoViewController (IntPtr handle) : base (handle)
		{

		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
			InitializeView();
			ChooseRestoNameInit();
			btnStart.TouchUpInside += HandleBtnStart;
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


			AutoCompleteTextFieldManager.Add(this, txtCountry, restoCountry); */
        }

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);

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

			this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) =>
			{
				this.PerformSegue("goToMenu", this);
			}), true);


			// getCountries();
		}

		void InitializeView()
		{
			tableViewLocationAutoComplete.Hidden = true;
			tableViewLocationAutoComplete.BackgroundColor = UIColor.Clear;
			txtName.ShouldReturn += TextFieldShouldReturn;
			txtBurger.ShouldReturn += (textField) => textField.ResignFirstResponder();
			txtBurgerNew.ShouldReturn += (textField) => textField.ResignFirstResponder();

			StringBuilder builderLocationAutoComplete = new StringBuilder(Constants.strPlacesAutofillUrl);
			builderLocationAutoComplete.Append("?input={0}").Append("&types=establishment").Append("&key=").Append(Constants.strGooglePlaceAPIKey);
			strAutoCompleteQuery = builderLocationAutoComplete.ToString();
			builderLocationAutoComplete.Clear();
			builderLocationAutoComplete = null;

		}
		void ChooseRestoNameInit()
		{
			txtName.EditingChanged += async delegate (object sender, EventArgs e)
			  {
				if (string.IsNullOrWhiteSpace(txtName.Text))
				  {
					  tableViewLocationAutoComplete.Hidden = true;
				  }
				  else
				  {
					if (txtName.Text.Length >= 3)
					  {
						  //hide other views
						  txtBurger.Hidden = true;
						  lblBurger.Hidden = true;
						  txtBurgerNew.Hidden = true;
						  lblAddBurger.Hidden = true;

						//Autofill
						string strFullURL = string.Format(strAutoCompleteQuery, txtName.Text);
						  objAutoCompleteLocationClass = await RestRequestClass.LocationAutoComplete(strFullURL);


						  if (objAutoCompleteLocationClass != null && objAutoCompleteLocationClass.status == "OK")
						  {
							  if (objAutoCompleteLocationClass.predictions.Count > 0)
							  {
								  if (objLocationAutoCompleteTableSource != null)
								  {
									  objLocationAutoCompleteTableSource.LocationRowSelectedEventAction -= LocationSelectedFromAutoFill;
									  objLocationAutoCompleteTableSource = null;
								  }

								  tableViewLocationAutoComplete.Hidden = false;
								  objLocationAutoCompleteTableSource = new LocationAutoCompleteTableSource(objAutoCompleteLocationClass.predictions);
								  objLocationAutoCompleteTableSource.LocationRowSelectedEventAction += LocationSelectedFromAutoFill;
								  tableViewLocationAutoComplete.Source = objLocationAutoCompleteTableSource;
								  tableViewLocationAutoComplete.ReloadData();
							  }
							  else
								  tableViewLocationAutoComplete.Hidden = true;
						  }
						  else
						  {
							  tableViewLocationAutoComplete.Hidden = true;
						  }
					  }
				  }
			  };


		}

		void LocationSelectedFromAutoFill(Prediction objPrediction)
		{
			Console.WriteLine(objPrediction.terms[0].value);

			showViews();

			txtName.Text = objPrediction.terms[0].value;
			placeId = objPrediction.place_id;
			getBurgersForPicker(placeId);
			txtName.ResignFirstResponder();
		}

		private bool TextFieldShouldReturn(UITextField textField)
		{
			showViews();
			textField.ResignFirstResponder();
			return true;
		}

		private void showViews()
		{
			tableViewLocationAutoComplete.Hidden = true;

			txtBurger.Hidden = false;
			lblBurger.Hidden = false;
			txtBurgerNew.Hidden = false;
			lblAddBurger.Hidden = false;
		}

		private async Task getBurgersForPicker(string placeId)
		{
			getBurgersFromDatabase(placeId);
			var bounds = UIScreen.MainScreen.Bounds;
			loadingOverlay = new LoadingOverlay(bounds, "Getting Burgers...");
			View.Add(loadingOverlay);
			await Task.Delay(1000);
			loadingOverlay.Hide();
			burgerNames = getBurgerSortedNameList(burgers);
			CreateBurgerPicker(burgerNames);
		}

		private SortedSet<String> getBurgerSortedNameList(List<Burger> burgers)
		{
			SortedSet<String> burgerNames = new SortedSet<String>();
			foreach (Burger burger in burgers)
			{
				burgerNames.Add(burger.BurgerName);
			}
			if (burgerNames.Count == 0)
			{
				burgerNames.Add("No burgers found for this place!");
				noBurgersFlag = true;
			}
			else noBurgersFlag = false;
			return burgerNames;
		}


		private void CreateBurgerPicker(SortedSet<String> burgerNames)
		{
			var picker = new UIPickerView();
			picker.Model = new ListPickerViewModel<String>(burgerNames);
			picker.ShowSelectionIndicator = true;


			UIToolbar toolbar = new UIToolbar();
			toolbar.BarStyle = UIBarStyle.BlackTranslucent;
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
						if (!noBurgersFlag) textview.Text = pickerItem.SelectedItem;
						else textview.Text = "";
						textview.ResignFirstResponder();
					}
				}

			});
			toolbar.SetItems(new UIBarButtonItem[] { doneButton }, true);

			txtBurger.InputView = picker;
			txtBurger.InputAccessoryView = toolbar;
		}

         private void getBurgersFromDatabase(string placeId)
		{

			var webClient = new WebClient();
			webClient.Encoding = Encoding.UTF8;
			webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

			webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
			{
				var json = e.Result;
				burgers = JsonConvert.DeserializeObject<List<Burger>>(json);
			});

			webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getBurger.php"), String.Format("RestoGoogleId={0}", placeId));
		}

        private void HandleBtnStart(object sender, EventArgs e)
        {
			if (string.IsNullOrEmpty(txtName.Text)){
				AlertViewModel.alertViewNormal("No restaurant selected", "Please enter a restaurant");
			}
			else if(string.IsNullOrEmpty(txtBurger.Text) && string.IsNullOrEmpty(txtBurgerNew.Text))
            {
				AlertViewModel.alertViewNormal("No burger selected", "Please select a burger or enter a new one");
            } else if(!string.IsNullOrEmpty(txtBurger.Text) && !string.IsNullOrEmpty(txtBurgerNew.Text))
            {
                AlertViewModel.alertViewNormal("Too many burgers selected", "Please select a burger or enter a new one");

            }
            else
            {
                //make new Resto & Burger object
               // prepareRestoBurger();
                this.PerformSegue("goToQuestOne", this);
            }
            


        }

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
           

       

     
    }
}

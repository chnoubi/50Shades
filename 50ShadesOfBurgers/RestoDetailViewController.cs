using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Net;
using System.Text;
using UIKit;
using Google.Maps;
using CoreGraphics;
using System.Threading.Tasks;
using MapKit;
using CoreLocation;

namespace _50ShadesOfBurgers
{
	partial class RestoDetailViewController : UIViewController
	{
		public string restoGoogleId { get; set; }
		string strPlaceQuery;
		public PlaceDetailsClass resto;
        LoadingOverlay loadingOverlay;
		public RestoDetailViewController (IntPtr handle) : base (handle)
		{
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();

		}

		void buildUrlString()
		{
			StringBuilder builderUrl = new StringBuilder(Constants.strPlacesRequestUrl);
			builderUrl.Append("?placeid={0}").Append("&key=").Append(Constants.strGooglePlaceAPIKey);
			strPlaceQuery = builderUrl.ToString();
			builderUrl.Clear();
			builderUrl = null;
		}

		public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            buildUrlString();
			resto = new PlaceDetailsClass();
			getResto(restoGoogleId);

            var bounds = UIScreen.MainScreen.Bounds;
            loadingOverlay = new LoadingOverlay(bounds,"Getting Details...");
            View.Add(loadingOverlay);
            loadingOverlay.Hide();

        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
			lblRestoName.Text = resto.result.name;
			lblRestoAdresse.Text = resto.result.formatted_address;
			lblRestoTel.Text = resto.result.international_phone_number;

			var restoCoords = new CLLocationCoordinate2D(resto.result.geometry.location.lat, resto.result.geometry.location.lng);

			var annotation = new BurgerPlacesAnnotation(restoCoords, resto.result.name);
			mapViewResto.AddAnnotation(annotation);

			MKCoordinateSpan span = new MKCoordinateSpan(KilometresToLatitudeDegrees(2), KilometresToLongitudeDegrees(2, restoCoords.Latitude));
			mapViewResto.Region = new MKCoordinateRegion(restoCoords, span);

        }



		public async Task<PlaceDetailsClass> getResto(string restoId)
		{
			string strFullURL = string.Format(strPlaceQuery,restoId);
			resto = await RestRequestClass.PlaceDetails(strFullURL);
			return resto;
		}

		// <summary>Converts kilometres to latitude degrees</summary>
		public double KilometresToLatitudeDegrees(double kms)
		{
			double earthRadius = 6371.0; // in kms
			double radiansToDegrees = 180.0 / Math.PI;
			return (kms / earthRadius) * radiansToDegrees;
		}
			                                             
		// <summary>Converts kilometres to longitudinal degrees at a specified latitude</summary>
		public double KilometresToLongitudeDegrees(double kms, double atLatitude)
		{
			double earthRadius = 6371.0; // in kms
			double degreesToRadians = Math.PI / 180.0;
			double radiansToDegrees = 180.0 / Math.PI;
			// derive the earth's radius at that point in latitude
			double radiusAtLatitude = earthRadius * Math.Cos(atLatitude * degreesToRadians);
			return (kms / radiusAtLatitude) * radiansToDegrees;
		}
	}
}

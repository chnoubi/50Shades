using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Net;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class RestoDetailViewController : UIViewController
	{
        public int restoId { get; set; }
        public Resto resto;
        LoadingOverlay loadingOverlay;
		public RestoDetailViewController (IntPtr handle) : base (handle)
		{
		}

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            resto = new Resto();
            getResto(restoId);

            var bounds = UIScreen.MainScreen.Bounds;
            loadingOverlay = new LoadingOverlay(bounds,"Getting Details...");
            View.Add(loadingOverlay);
            loadingOverlay.Hide();

        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            lblRestoName.Text = resto.RestoName;
            lblRestoAdresse.Text = resto.RestoCity + " " + resto.RestoCountry;
            lblRestoTel.Text = "+ 32 (2) 222.34.45";
        }

        public void getResto(int restoId)
        {

            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var json = e.Result;
                resto = JsonConvert.DeserializeObject<Resto>(json);
            });

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getRestoDetail.php"), String.Format("restoId={0}", restoId));
        }
    }
}

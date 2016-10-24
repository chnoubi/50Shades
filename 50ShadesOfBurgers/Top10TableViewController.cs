using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Net;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers
{
	public partial class Top10TableViewController : UITableViewController
	{
        public List<BurgerTableModel> burgers;
        LoadingOverlay loadingOverlay;
        public int restoId;
        public String Choice { get; set; }
        public String Name { get; set; }
		public Top10TableViewController (IntPtr handle) : base (handle)
		{
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            

        }

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            burgers = new List<BurgerTableModel>();
            getTop10(Choice, Name);
            table = new UITableView(View.Bounds);
            if (Choice.Equals("world"))
            {
                this.TableTitle.Title = "Burger Top 10 - World";
            }else
            {
                this.TableTitle.Title = string.Format("Burger Top 10 - {0}", Name);
            }
			table.SeparatorColor = UIColor.Clear;
            Add(table);

            var bounds = UIScreen.MainScreen.Bounds;
              loadingOverlay = new LoadingOverlay(bounds, "Getting Top 10...");
              View.Add(loadingOverlay);
              loadingOverlay.Hide();

            this.NavigationItem.SetLeftBarButtonItem(new UIBarButtonItem("Menu", UIBarButtonItemStyle.Plain, (sender, args) => {
                this.PerformSegue("goToMenu", this);
            }),true);
        }

        public override void ViewDidAppear(bool animated)
        {
            base.ViewDidAppear(animated);
            table.Source = new Top10DataSource(burgers, this);


            table.ReloadData();
			this.table.TableFooterView = new UIView();
        }

        public void getTop10(String Choice, String Name)
        {

            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var json = e.Result;
                burgers = JsonConvert.DeserializeObject<List<BurgerTableModel>>(json);
            });

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getTop10.php"), String.Format("RestoChoice={0}&RestoCityCountryName={1}", Choice, Name));
        }

        public override void PrepareForSegue(UIStoryboardSegue segue, NSObject sender)
        {
            base.PrepareForSegue(segue, sender);
            if (segue.Identifier == "goToRestoDetail")
            {
                var restoDetailVC = segue.DestinationViewController as RestoDetailViewController;
                restoDetailVC.restoId = restoId;
            }
            

        }

    }

    
}

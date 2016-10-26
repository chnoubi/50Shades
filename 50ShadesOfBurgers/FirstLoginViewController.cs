using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.Collections.Generic;
using System.Net;
using System.Text;
using UIKit;
using System.Text.RegularExpressions;


namespace _50ShadesOfBurgers
{
    partial class FirstLoginViewController : UIViewController
    {
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public FirstLoginViewController(IntPtr handle) : base(handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            this.SetupGenderPicker();
            btnConfirm.TouchUpInside += BtnConfirm_TouchUpInside;
            this.txtEmail.ShouldReturn += (textField) => {
                textField.ResignFirstResponder();
                return true;
            };
        }

        private void BtnConfirm_TouchUpInside(object sender, EventArgs e)
        {
           /*    if (!Validator.EmailIsValid(txtEmail.Text))
               {
                   UIAlertView alert = new UIAlertView();
                   alert.Title = "L'adresse mail n'est pas correcte.";
                   alert.AddButton("OK");
                   alert.AlertViewStyle = UIAlertViewStyle.Default;
                   alert.Show();
               }
               else
               {*/
                   ad.user.Email = txtEmail.Text;
                   ad.user.Uuid = UIDevice.CurrentDevice.IdentifierForVendor.AsString();
                   ad.user.Gender = (int) pickerGender.SelectedRowInComponent(0);
                   ad.user.Birthday = NSDateToDateTime(datePicker.Date);
                   ad.connection.updateUser(ad.user);
                   this.updateServerDB();
                   this.PerformSegue("goToMainMenu", this);
              // }
           

        }

        

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

            Buttons.setupButtons(btnConfirm);

        }

        public static DateTime NSDateToDateTime(NSDate date)
        {
            DateTime reference = TimeZone.CurrentTimeZone.ToLocalTime(new DateTime(2001,1,1,0,0,0));
            return reference.AddSeconds(date.SecondsSinceReferenceDate);
        }
        private void SetupGenderPicker()
        {
            SortedSet<String> gender = new SortedSet<String>()
            {
                "Homme",
                "Femme"
            };
            pickerGender.Model = new ListPickerViewModel<String>(gender);

        }

        public void updateServerDB()
        {
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var text = e.Result;
                Console.WriteLine(text);
            });

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/eaterins.php"), String.Format("eaterUuid={0}&eaterDeviceToken={1}&eaterEmail={2}&eaterGender={3}&eaterBirthday={4}",ad.user.Uuid,ad.user.DeviceToken,ad.user.Email,ad.user.Gender,ad.user.Birthday));
        }

       
    }

     public static class Validator
    {

        static Regex ValidEmailRegex = CreateValidEmailRegex();

        private static Regex CreateValidEmailRegex()
        {
            string validEmailPattern = @"^(?!\.)(""([^""\r\\]|\\[""\r\\])*""|"
                + @"([-a-z0-9!#$%&'*+/=?^_`{|}~]|(?<!\.)\.)*)(?<!\.)"
                + @"@[a-z0-9][\w\.-]*[a-z0-9]\.[a-z][a-z\.]*[a-z]$";

            return new Regex(validEmailPattern, RegexOptions.IgnoreCase);
        }

        internal static bool EmailIsValid(string emailAddress)
        {
            bool isValid = ((!string.IsNullOrEmpty(emailAddress)) && (ValidEmailRegex.IsMatch(emailAddress)));

            return isValid;
        }

        
    }
}

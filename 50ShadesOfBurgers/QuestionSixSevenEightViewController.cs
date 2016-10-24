using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Drawing;
using System.Net;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class QuestionSixSevenEightViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public List<String> question8;
        private nfloat scroll_amount = 0.0f;
        private nfloat bottom = 0.0f;
        private nfloat offset = 10.0f;
        private bool moveViewUp = false;
        NSObject showNotification;
        NSObject hideNotification;
        public QuestionSixSevenEightViewController (IntPtr handle) : base (handle)
		{
		}
     
        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
           
            question8 = new List<String>();
            this.setupPickers();

            //setup done button keyboard
              UIToolbar toolbar = new UIToolbar(new RectangleF(0.0f, 0.0f, (float) this.View.Frame.Size.Width, 44.0f));
              toolbar.TintColor = UIColor.White;
              toolbar.BarStyle = UIBarStyle.Black;
              toolbar.Translucent = true;

              var doneBtn = new UIBarButtonItem(UIBarButtonSystemItem.Done, delegate
              {
                  this.txtComment.ResignFirstResponder();
              });

            toolbar.Items = new UIBarButtonItem[] { doneBtn };

              this.txtComment.InputAccessoryView = toolbar;

           
            btnConfirmer.TouchUpInside += BtnNext_TouchUpInside;
        }

         void ShowCallback(object sender, UIKeyboardEventArgs args)
        {
            // get the keyboard size
            CoreGraphics.CGRect r = args.FrameBegin;

           
            // Bottom of the controller = initial position + height + offset      
            bottom = (txtComment.Frame.Y + txtComment.Frame.Height + offset);

            // Calculate how far we need to scroll
            scroll_amount = (r.Height - (View.Frame.Size.Height - bottom));

            // Perform the scrolling
            if (scroll_amount > 0)
            {
                moveViewUp = true;
                ScrollTheView(moveViewUp);
            }
            else
            {
                moveViewUp = false;
            }

        }

       
         void HideCallback(object sender, UIKeyboardEventArgs args)
        {
            if(moveViewUp){ScrollTheView(false);}
        }

        private void ScrollTheView(bool move)
        {

            // scroll the view up or down
            UIView.BeginAnimations(string.Empty, System.IntPtr.Zero);
            UIView.SetAnimationDuration(0.3);

            CoreGraphics.CGRect frame = View.Frame;

            if (move)
            {
                frame.Y -= (float) scroll_amount;
            }
            else
            {
                frame.Y += (float) scroll_amount;
                scroll_amount = 0;
            }

            View.Frame = frame;
            UIView.CommitAnimations();
        }

        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {

              ad.reponses.ReponseQuestId9 = (int)pickerOuie.SelectedRowInComponent(0) + 1;
               ad.reponses.ReponseScoreMoyen = ((double)(2 * (ad.reponses.ReponseQuestId1) / 4) + (double)(3 * (ad.reponses.ReponseQuestId2) / 4) + (double)(ad.reponses.ReponseQuestId3) / 4 + (double)(ad.reponses.ReponseQuestId4) / 4 + (double)(2 * (ad.reponses.ReponseQuestId5) / 4) + (double)(ad.reponses.ReponseQuestId6) / 4 + (double)(ad.reponses.ReponseQuestId7) / 3 + (double)(ad.reponses.ReponseQuestId8) / 3 + (double)(ad.reponses.ReponseQuestId9) / 3)/13*100;
               ad.connection.updateReponses(ad.reponses);
               if (ad.resto.RestoNew)
               {
                   updateAndInserNewRestoServerDB();

               }else
               {
                   updateServerDB();
               }

               UIAlertView alertActive = new UIAlertView()
                {
                    Title = "Merci...",
                    Message = "et bienvenue dans la plus grande communauté idélogique du monde: Les Burgers Lovers."
                };
                alertActive.AddButton("OK");
                alertActive.Show();


        }
        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnConfirmer);

            txtComment.Layer.CornerRadius = 10;
            txtComment.Layer.BorderWidth = 0.8f;
            txtComment.Layer.BorderColor = UIColor.LightGray.CGColor;

            showNotification = UIKeyboard.Notifications.ObserveWillShow(ShowCallback);
            hideNotification = UIKeyboard.Notifications.ObserveDidHide(HideCallback);
        }

        public void setupPickers()
        {
            question8.Add(ad.questions[7].QuestRep1);
            question8.Add(ad.questions[7].QuestRep2);
            question8.Add(ad.questions[7].QuestRep3);

            pickerOuie.Model = new QuestionPickerViewModel<String>(question8);
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

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/reponsesInsert.php"), String.Format("reponseEaterUuid={0}&burgerId={1}&restoId={2}&reponseQuestId1={3}&reponseQuestId2={4}&reponseQuestId3={5}&reponseQuestId4={6}&reponseQuestId5={7}&reponseQuestId6={8}&reponseQuestId7={9}&reponseQuestId8={10}&reponseQuestId9={11}&reponseScoreMoyen={12}&reponseComment={13}", ad.user.Uuid, ad.burger.BurgerId,ad.resto.RestoId,ad.reponses.ReponseQuestId1,ad.reponses.ReponseQuestId2,ad.reponses.ReponseQuestId3,ad.reponses.ReponseQuestId4,ad.reponses.ReponseQuestId5,ad.reponses.ReponseQuestId6,ad.reponses.ReponseQuestId7,ad.reponses.ReponseQuestId8, ad.reponses.ReponseQuestId9, ad.reponses.ReponseScoreMoyen, txtComment.Text));
        }
        public void updateAndInserNewRestoServerDB()
        {
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.UploadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var text = e.Result;
                Console.WriteLine(text);
            });

            webClient.UploadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/newRestoInsert.php"), String.Format("reponseEaterUuid={0}&burgerName={1}&restoName={2}&restoCountry={3}&restoCity={4}&reponseQuestId1={5}&reponseQuestId2={6}&reponseQuestId3={7}&reponseQuestId4={8}&reponseQuestId5={9}&reponseQuestId6={10}&reponseQuestId7={11}&reponseQuestId8={12}&reponseQuestId9={13}&reponseScoreMoyen={14}&reponseComment={15}", ad.user.Uuid, ad.burger.BurgerName, ad.resto.RestoName,ad.resto.RestoCountry,ad.resto.RestoCity, ad.reponses.ReponseQuestId1, ad.reponses.ReponseQuestId2, ad.reponses.ReponseQuestId3, ad.reponses.ReponseQuestId4, ad.reponses.ReponseQuestId5, ad.reponses.ReponseQuestId6, ad.reponses.ReponseQuestId7, ad.reponses.ReponseQuestId8, ad.reponses.ReponseQuestId9, ad.reponses.ReponseScoreMoyen, txtComment.Text));
        }
    }
}

using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.Collections.Generic;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class QuestionSixSevenViewController : UIViewController
    {
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public List<String> question6, question7;

        public QuestionSixSevenViewController (IntPtr handle) : base (handle)
        {
        }

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            question6 = new List<String>();
            question7 = new List<String>();
            this.setupPickers();
            btnNext.TouchUpInside += BtnNext_TouchUpInside;
        }


        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {
            ad.reponses.ReponseQuestId7 = (int)pickerDouceur.SelectedRowInComponent(0) + 1;
            ad.reponses.ReponseQuestId8 = (int)pickerFumet.SelectedRowInComponent(0) + 1;
            ad.connection.updateReponses(ad.reponses);
        }
        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnNext);
        }

        public void setupPickers()
        {
            question6.Add(ad.questions[5].QuestRep1);
            question6.Add(ad.questions[5].QuestRep2);
            question6.Add(ad.questions[5].QuestRep3);

            question7.Add(ad.questions[6].QuestRep1);
            question7.Add(ad.questions[6].QuestRep2);
            question7.Add(ad.questions[6].QuestRep3);

            pickerDouceur.Model = new QuestionPickerViewModel<String>(question6);
            pickerFumet.Model = new QuestionPickerViewModel<String>(question7);
        }
    }
}
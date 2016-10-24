using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class QuestionFourFiveViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public List<String> question4, question5;
        public QuestionFourFiveViewController (IntPtr handle) : base (handle)
		{
		}

       
        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            question4 = new List<String>();
            question5 = new List<String>();
            this.setupPickers();
            btnNext.TouchUpInside += BtnNext_TouchUpInside;
        }


        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {
            ad.reponses.ReponseQuestId5 = (int)pickerBeaute.SelectedRowInComponent(0) + 1;
            ad.reponses.ReponseQuestId6 = (int)pickerTenue.SelectedRowInComponent(0) + 1;
            ad.connection.updateReponses(ad.reponses);
        }
        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnNext);
        }

        public void setupPickers()
        {
            question4.Add(ad.questions[3].QuestRep1);
            question4.Add(ad.questions[3].QuestRep2);
            question4.Add(ad.questions[3].QuestRep3);
            question4.Add(ad.questions[3].QuestRep4);

            question5.Add(ad.questions[4].QuestRep1);
            question5.Add(ad.questions[4].QuestRep2);
            question5.Add(ad.questions[4].QuestRep3);
            question5.Add(ad.questions[4].QuestRep4);

            pickerBeaute.Model = new QuestionPickerViewModel<String>(question4);
            pickerTenue.Model = new QuestionPickerViewModel<String>(question5);
        }
    }
}

using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class QuestionTwoThreeViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public List<String> question2, question3;

        public QuestionTwoThreeViewController (IntPtr handle) : base (handle)
		{
		}


        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            question2 = new List<String>();
            question3 = new List<String>();
            this.setupPickers();
            btnNext.TouchUpInside += BtnNext_TouchUpInside;
        }


        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {
            ad.reponses.ReponseQuestId3 = (int)pickerSauce.SelectedRowInComponent(0) + 1;
            ad.reponses.ReponseQuestId4 = (int)pickerGarniture.SelectedRowInComponent(0) + 1;
            ad.connection.updateReponses(ad.reponses);
        }
        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnNext); 
        }

        public void setupPickers()
        {
            question2.Add(ad.questions[2].QuestRep1);
            question2.Add(ad.questions[2].QuestRep2);
            question2.Add(ad.questions[2].QuestRep3);
            question2.Add(ad.questions[2].QuestRep4);

            question3.Add(ad.questions[8].QuestRep1);
            question3.Add(ad.questions[8].QuestRep2);
            question3.Add(ad.questions[8].QuestRep3);
            question3.Add(ad.questions[8].QuestRep4);

            pickerSauce.Model = new QuestionPickerViewModel<String>(question2);
            pickerGarniture.Model = new QuestionPickerViewModel<String>(question3);

        }
    }
}







    
   



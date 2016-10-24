using Foundation;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using UIKit;
using _50ShadesOfBurgers;
using _50ShadesOfBurgers.Model;

namespace _50ShadesOfBurgers
{
	partial class QuestionOneViewController : UIViewController
	{
        AppDelegate ad = (AppDelegate)UIApplication.SharedApplication.Delegate;
        public List<String> question1, question2;
       
		public QuestionOneViewController (IntPtr handle) : base (handle)
		{
            
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
            question1 = new List<String>();
            question2 = new List<String>();

            this.setupPickers();
            btnNext.TouchUpInside += BtnNext_TouchUpInside;
        }

        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {
             ad.reponses.ReponseQuestId1 = (int) pickerPain.SelectedRowInComponent(0) + 1;
             ad.reponses.ReponseQuestId2 = (int)pickerViande.SelectedRowInComponent(0) + 1;

            ad.connection.updateReponses(ad.reponses);
        }

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnNext);
        }

        public void setupPickers()
        {
            question1.Add(ad.questions[0].QuestRep1);
            question1.Add(ad.questions[0].QuestRep2);
            question1.Add(ad.questions[0].QuestRep3);
            question1.Add(ad.questions[0].QuestRep4);

            question2.Add(ad.questions[1].QuestRep1);
            question2.Add(ad.questions[1].QuestRep2);
            question2.Add(ad.questions[1].QuestRep3);
            question2.Add(ad.questions[1].QuestRep4);

            pickerPain.Model = new QuestionPickerViewModel<String>(question1);
            pickerViande.Model = new QuestionPickerViewModel<String>(question2);


        }
    }
}

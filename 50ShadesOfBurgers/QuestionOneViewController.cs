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
		UIImage selectedGradeImg, unselectedGradeImg;

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
         //    ad.reponses.ReponseQuestId1 = (int) pickerPain.SelectedRowInComponent(0) + 1;
         //    ad.reponses.ReponseQuestId2 = (int)pickerViande.SelectedRowInComponent(0) + 1;

            ad.connection.updateReponses(ad.reponses);
        }

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

			unselectedGradeImg = UIImage.FromFile("unselectedGrade.png");
			unselectedGradeImg = unselectedGradeImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			selectedGradeImg = UIImage.FromFile("selectedGrade.png");
			selectedGradeImg = selectedGradeImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			setupGradeButtons();



		}

		private void setupGradeButtons()
		{
			//bun
			btnBunGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnBunGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnBunGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnBunGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//meat
			btnMeatGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnMeatGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnMeatGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnMeatGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//sauce
			btnSauceGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSauceGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSauceGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSauceGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//salad
			btnSaladGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSaladGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSaladGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
			btnSaladGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);
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

       //     pickerPain.Model = new QuestionPickerViewModel<String>(question1);
         //   pickerViande.Model = new QuestionPickerViewModel<String>(question2);


        }
    }
}

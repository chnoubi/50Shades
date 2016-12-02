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

		//create an instance for the bun grades
		CheckGrades bunGrades, meatGrades, sauceGrades, saladGrades;

        public List<String> question1, question2;
		public QuestionOneViewController (IntPtr handle) : base (handle)
		{
            
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

            question1 = new List<String>();
            question2 = new List<String>();

			//initialize de grades (default false)
			bunGrades = new CheckGrades();
			meatGrades = new CheckGrades();
			sauceGrades = new CheckGrades();
			saladGrades = new CheckGrades();

			//handle bun buttons
			btnBunGrade1.TouchUpInside += handleBunGrades;
			btnBunGrade2.TouchUpInside += handleBunGrades;
			btnBunGrade3.TouchUpInside += handleBunGrades;
			btnBunGrade4.TouchUpInside += handleBunGrades;

			//handle meat buttons
			btnMeatGrade1.TouchUpInside += handleMeatGrades;
			btnMeatGrade2.TouchUpInside += handleMeatGrades;
			btnMeatGrade3.TouchUpInside += handleMeatGrades;
			btnMeatGrade4.TouchUpInside += handleMeatGrades;

			//handle sauce buttons
			btnSauceGrade1.TouchUpInside += handleSauceGrades;
			btnSauceGrade2.TouchUpInside += handleSauceGrades;
			btnSauceGrade3.TouchUpInside += handleSauceGrades;
			btnSauceGrade4.TouchUpInside += handleSauceGrades;

			//handle salad buttons
			btnSaladGrade1.TouchUpInside += handleSaladGrades;
			btnSaladGrade2.TouchUpInside += handleSaladGrades;
			btnSaladGrade3.TouchUpInside += handleSaladGrades;
			btnSaladGrade4.TouchUpInside += handleSaladGrades;


			btnNext.TouchUpInside += BtnNext_TouchUpInside;
        }

        private void BtnNext_TouchUpInside(object sender, EventArgs e)
        {
			//    ad.reponses.ReponseQuestId1 = (int) pickerPain.SelectedRowInComponent(0) + 1;
			//    ad.reponses.ReponseQuestId2 = (int)pickerViande.SelectedRowInComponent(0) + 1;

			//ad.connection.updateReponses(ad.reponses);			




			this.PerformSegue("goToQuest5", this);
		}

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

			unselectedGradeImg = UIImage.FromFile("unselectedGrade.png");
			unselectedGradeImg = unselectedGradeImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);

			selectedGradeImg = UIImage.FromFile("selectedGrade.png");
			selectedGradeImg = selectedGradeImg.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);


		}

		public override void ViewDidAppear(bool animated)
		{
			base.ViewDidAppear(animated);

			checkGradeButtons();
		}

		//checks based on the bool array of the CheckGrades instances if the grades should be selected or not
		private void checkGradeButtons()
		{

			//bun
			for (int i = 1; i <= bunGrades.SelectedGrades.Length;i++)
			{
				
				UIButton btn = (UIButton) (this.View.ViewWithTag((nint)i));
				if (bunGrades.SelectedGrades[i-1])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//meat
			for (int i = 5; i <= meatGrades.SelectedGrades.Length + 4;i++)
			{
				
				UIButton btn = (UIButton) (this.View.ViewWithTag((nint)i));
				if (meatGrades.SelectedGrades[i-5])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//sauce
			for (int i = 9; i <= sauceGrades.SelectedGrades.Length + 8; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (sauceGrades.SelectedGrades[i - 9])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//salad
			for (int i = 13; i <= saladGrades.SelectedGrades.Length + 12; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (saladGrades.SelectedGrades[i - 13])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}
		}


		void handleBunGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			bunGrades.grade(tag);

			checkGradeButtons();

		}

		void handleMeatGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			//harmonize tags for grade method
			tag = tag - 4;

			meatGrades.grade(tag);

			checkGradeButtons();

		}

		void handleSauceGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;
						
			//harmonize tags for grade method
			tag = tag - 8;

			sauceGrades.grade(tag);

			checkGradeButtons();

		}

		void handleSaladGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			//harmonize tags for grade method
			tag = tag - 12;

			saladGrades.grade(tag);

			checkGradeButtons();

		}


	}
}

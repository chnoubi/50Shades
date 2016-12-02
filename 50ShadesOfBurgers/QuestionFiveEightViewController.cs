using Foundation;
using System;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class QuestionFiveEightViewController : UIViewController
    {
		UIImage selectedGradeImg, unselectedGradeImg;

		CheckGrades seeGrades, feelGrades, smellGrades, hearGrades;

        public QuestionFiveEightViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			//initialize de grades (default false)
			seeGrades = new CheckGrades();
			feelGrades = new CheckGrades();
			smellGrades = new CheckGrades();
			hearGrades = new CheckGrades();

			btnNext.TouchUpInside += BtnNext_TouchUpInside;
			//handle bun buttons
			btnSeeGrade1.TouchUpInside += handleSeeGrades;
			btnSeeGrade2.TouchUpInside += handleSeeGrades;
			btnSeeGrade3.TouchUpInside += handleSeeGrades;
			btnSeeGrade4.TouchUpInside += handleSeeGrades;

			//handle meat buttons
			btnFeelGrade1.TouchUpInside += handleFeelGrades;
			btnFeelGrade2.TouchUpInside += handleFeelGrades;
			btnFeelGrade3.TouchUpInside += handleFeelGrades;
			btnFeelGrade4.TouchUpInside += handleFeelGrades;

			//handle sauce buttons
			btnSmellGrade1.TouchUpInside += handleSmellGrades;
			btnSmellGrade2.TouchUpInside += handleSmellGrades;
			btnSmellGrade3.TouchUpInside += handleSmellGrades;
			btnSmellGrade4.TouchUpInside += handleSmellGrades;

			//handle salad button
			btnHearGrade1.TouchUpInside += handleHearGrades;
			btnHearGrade2.TouchUpInside += handleHearGrades;
			btnHearGrade3.TouchUpInside += handleHearGrades;
			btnHearGrade4.TouchUpInside += handleHearGrades;


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

		private void checkGradeButtons()
		{
			//Seen
			for (int i = 1; i <= seeGrades.SelectedGrades.Length; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (seeGrades.SelectedGrades[i - 1])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//Feelt
			for (int i = 5; i <= feelGrades.SelectedGrades.Length + 4; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (feelGrades.SelectedGrades[i - 5])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//Smelle
			for (int i = 9; i <= smellGrades.SelectedGrades.Length + 8; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (smellGrades.SelectedGrades[i - 9])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}

			//Heard
			for (int i = 13; i <= hearGrades.SelectedGrades.Length + 12; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (hearGrades.SelectedGrades[i - 13])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}
		}

		void handleSeeGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			seeGrades.grade(tag);

			checkGradeButtons();

		}

		void handleFeelGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			//harmonize tags for grade method
			tag = tag - 4;

			feelGrades.grade(tag);

			checkGradeButtons();

		}

		void handleSmellGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			//harmonize tags for grade method
			tag = tag - 8;

			smellGrades.grade(tag);

			checkGradeButtons();

		}

		void handleHearGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			//harmonize tags for grade method
			tag = tag - 12;

			hearGrades.grade(tag);

			checkGradeButtons();

		}


		private void BtnNext_TouchUpInside(object sender, EventArgs e)
		{
			

			this.PerformSegue("goToComments", this);
		}
    }
}
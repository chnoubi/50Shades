using Foundation;
using System;
using UIKit;

namespace _50ShadesOfBurgers
{
    public partial class QuestionFiveEightViewController : UIViewController
    {
		UIImage selectedGradeImg, unselectedGradeImg;

        public QuestionFiveEightViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			btnNext.TouchUpInside += BtnNext_TouchUpInside;

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
			//Seen
			btnSeeGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
			//btnSeeGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
			//btnSeeGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
			//btnSeeGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//Feelt
			btnFeelGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnFeelGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnFeelGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnFeelGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//Smelle
			btnSmellGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnSmellGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnSmellGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnSmellGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);

			//Heard
			btnHearGrade1.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnHearGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnHearGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
	//		btnHearGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);
		}

		private void BtnNext_TouchUpInside(object sender, EventArgs e)
		{
			

			this.PerformSegue("goToComments", this);
		}
    }
}
using Foundation;
using System;
using UIKit;
using System.Drawing;

namespace _50ShadesOfBurgers
{
    public partial class CommentsAndConfirmViewController : UIViewController
    {

		UIImage selectedGradeImg, unselectedGradeImg;

		Grades overallGrades;

        public CommentsAndConfirmViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			btnConfirm.TouchUpInside += handleConfirmButton;

			overallGrades = new Grades();
			btnOverallGrade1.TouchUpInside += handleOverallGrades;
			btnOverallGrade2.TouchUpInside += handleOverallGrades;
			btnOverallGrade3.TouchUpInside += handleOverallGrades;
			btnOverallGrade4.TouchUpInside += handleOverallGrades;

		}

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);
			setupTxtCommentKeyboard();
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

		void checkGradeButtons()
		{
			for (int i = 1; i <= overallGrades.SelectedGrades.Length; i++)
			{

				UIButton btn = (UIButton)(this.View.ViewWithTag((nint)i));
				if (overallGrades.SelectedGrades[i - 1])
				{
					btn.SetImage(selectedGradeImg, UIControlState.Normal);
				}
				else {
					btn.SetImage(unselectedGradeImg, UIControlState.Normal);
				}
			}		}

		void handleOverallGrades(object sender, EventArgs e)
		{
			UIButton btn = (UIButton)sender;
			var tag = btn.Tag;

			overallGrades.grade(tag);

			checkGradeButtons();
		}

		void setupTxtCommentKeyboard()
		{
			//setup done button keyboard
			UIToolbar toolbar = new UIToolbar(new RectangleF(0.0f, 0.0f, (float)this.View.Frame.Size.Width, 44.0f));
			toolbar.TintColor = UIColor.White;
			toolbar.BarStyle = UIBarStyle.Black;
			toolbar.Translucent = true;

			var doneBtn = new UIBarButtonItem(UIBarButtonSystemItem.Done, delegate
			{
				this.txtComment.ResignFirstResponder();
			});

			toolbar.Items = new UIBarButtonItem[] { doneBtn };

			this.txtComment.InputAccessoryView = toolbar;
		}


		void handleConfirmButton (object sender, EventArgs e)
		{
			AlertViewModel.alertViewNormal("Thank you", "");
		}
	}
}
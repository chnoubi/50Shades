using Foundation;
using System;
using UIKit;
using System.Drawing;

namespace _50ShadesOfBurgers
{
    public partial class CommentsAndConfirmViewController : UIViewController
    {


        public CommentsAndConfirmViewController (IntPtr handle) : base (handle)
        {
        }

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			btnConfirm.TouchUpInside += handleConfirmButton;
		}

		public override void ViewWillAppear(bool animated)
		{
			base.ViewWillAppear(animated);
			setupTxtCommentKeyboard();

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
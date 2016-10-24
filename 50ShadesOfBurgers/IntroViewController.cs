using _50ShadesOfBurgers.Model;
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class IntroViewController : UIViewController
	{
		public IntroViewController (IntPtr handle) : base (handle)
		{
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();
        }

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);
            Buttons.setupButtons(btnSkipIntro);
        }
    }
}

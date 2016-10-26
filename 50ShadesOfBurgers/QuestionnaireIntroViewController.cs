using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.Net;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers
{
	partial class QuestionnaireIntroViewController : UIViewController
	{
        public QuestionnaireIntroViewController (IntPtr handle) : base (handle)
		{
		}

        public override void ViewDidLoad()
        {
            base.ViewDidLoad();

			this.View.BackgroundColor = UIColor.FromPatternImage(UIImage.FromFile("images/4b. Resto.jpg"));
            

           /* barIcon = UIImage.FromBundle("survey@1x");
            barIcon = barIcon.ImageWithRenderingMode(UIImageRenderingMode.AlwaysOriginal);
            this.TabBarItem.Image = barIcon;
            this.TabBarItem.Title = "Survey";*/

          
           
        }

       

        public override void ViewWillAppear(bool animated)
        {
            base.ViewWillAppear(animated);

            Buttons.setupButtons(btnGo);

        }

        

       

    }
}

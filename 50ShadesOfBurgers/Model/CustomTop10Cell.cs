using CoreGraphics;
using Foundation;
using System;
using System.Collections.Generic;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers.Model
{
    public class CustomTop10Cell : UITableViewCell
    {
        UILabel lblBurgerName, lblRestoName;
        UIImageView imageView;
		UIImage bgrImg;
        public CustomTop10Cell (string cellId) : base(UITableViewCellStyle.Default, cellId)
        {
			//TO DO CHANGE BGR IMG TO MATCH STYLE
			bgrImg = UIImage.FromFile("woodTexture.png");

			//ContentView.BackgroundColor = UIColor.FromPatternImage(bgrImg);

			SelectionStyle = UITableViewCellSelectionStyle.Gray;
            lblBurgerName = new UILabel()
            {
                Font = UIFont.FromName("Cochin-BoldItalic", 22f),
                TextColor = UIColor.FromRGB(127,51,0),
                BackgroundColor = UIColor.Clear
            };

            lblRestoName = new UILabel()
            {
                Font = UIFont.FromName("AmericanTypewriter", 12f),
                TextColor = UIColor.FromRGB(38, 127, 0),
                BackgroundColor = UIColor.Clear
            };

            imageView = new UIImageView();

            ContentView.AddSubviews(new UIView[] { lblBurgerName,lblRestoName,imageView });
        }

        public void UpdateCell(string burgerName, string restoName, UIImage image)
        {
            lblBurgerName.Text = burgerName;
            lblRestoName.Text = restoName;
            imageView.Image = image;
        }

        public override void LayoutSubviews()
        {
            base.LayoutSubviews();
            lblBurgerName.Frame = new CGRect(5, 4, ContentView.Bounds.Width - 63, 25);
            lblRestoName.Frame = new CGRect(20, 22, ContentView.Bounds.Width - 63, 25);
            imageView.Frame = new CGRect(ContentView.Bounds.Width - 63, 17, 50, 10);
        }
    }
}

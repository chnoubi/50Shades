using System;
using System.Collections.Generic;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers.Model
{
    public class Buttons
    {
        public static void setupButtons(UIButton button)
        {
            button.Layer.BorderWidth = 0.8f;
            button.Layer.CornerRadius = 8;
            button.Layer.BorderColor = UIColor.LightGray.CGColor;
        }
    }
}

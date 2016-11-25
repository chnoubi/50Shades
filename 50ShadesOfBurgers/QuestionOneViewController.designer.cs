// WARNING
//
// This file has been generated automatically by Xamarin Studio from the outlets and
// actions declared in your storyboard file.
// Manual changes to this file will not be maintained.
//
using Foundation;
using System;
using System.CodeDom.Compiler;
using UIKit;

namespace _50ShadesOfBurgers
{
    [Register ("QuestionOneViewController")]
    partial class QuestionOneViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView bgrImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnNext { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblBun { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblMeat { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblSalad { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblSauce { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblTaste { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (bgrImage != null) {
                bgrImage.Dispose ();
                bgrImage = null;
            }

            if (btnNext != null) {
                btnNext.Dispose ();
                btnNext = null;
            }

            if (lblBun != null) {
                lblBun.Dispose ();
                lblBun = null;
            }

            if (lblMeat != null) {
                lblMeat.Dispose ();
                lblMeat = null;
            }

            if (lblSalad != null) {
                lblSalad.Dispose ();
                lblSalad = null;
            }

            if (lblSauce != null) {
                lblSauce.Dispose ();
                lblSauce = null;
            }

            if (lblTaste != null) {
                lblTaste.Dispose ();
                lblTaste = null;
            }
        }
    }
}
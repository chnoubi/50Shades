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
    [Register ("CommentsAndConfirmViewController")]
    partial class CommentsAndConfirmViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView bgrImage { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnConfirm { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblComment { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView txtComment { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (bgrImage != null) {
                bgrImage.Dispose ();
                bgrImage = null;
            }

            if (btnConfirm != null) {
                btnConfirm.Dispose ();
                btnConfirm = null;
            }

            if (lblComment != null) {
                lblComment.Dispose ();
                lblComment = null;
            }

            if (txtComment != null) {
                txtComment.Dispose ();
                txtComment = null;
            }
        }
    }
}
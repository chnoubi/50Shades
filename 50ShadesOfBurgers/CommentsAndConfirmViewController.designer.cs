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
        UIKit.UIButton btnConfirmer { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblRajoutezComment { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView txtComment { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnConfirmer != null) {
                btnConfirmer.Dispose ();
                btnConfirmer = null;
            }

            if (lblRajoutezComment != null) {
                lblRajoutezComment.Dispose ();
                lblRajoutezComment = null;
            }

            if (txtComment != null) {
                txtComment.Dispose ();
                txtComment = null;
            }
        }
    }
}
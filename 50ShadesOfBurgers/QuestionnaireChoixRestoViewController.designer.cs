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
    [Register ("QuestionnaireChoixRestoViewController")]
    partial class QuestionnaireChoixRestoViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnStart { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgBgr { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblAddBurger { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblBurger { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblChoose { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblResto { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtBurger { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtBurgerNew { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtName { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnStart != null) {
                btnStart.Dispose ();
                btnStart = null;
            }

            if (imgBgr != null) {
                imgBgr.Dispose ();
                imgBgr = null;
            }

            if (lblAddBurger != null) {
                lblAddBurger.Dispose ();
                lblAddBurger = null;
            }

            if (lblBurger != null) {
                lblBurger.Dispose ();
                lblBurger = null;
            }

            if (lblChoose != null) {
                lblChoose.Dispose ();
                lblChoose = null;
            }

            if (lblResto != null) {
                lblResto.Dispose ();
                lblResto = null;
            }

            if (txtBurger != null) {
                txtBurger.Dispose ();
                txtBurger = null;
            }

            if (txtBurgerNew != null) {
                txtBurgerNew.Dispose ();
                txtBurgerNew = null;
            }

            if (txtName != null) {
                txtName.Dispose ();
                txtName = null;
            }
        }
    }
}
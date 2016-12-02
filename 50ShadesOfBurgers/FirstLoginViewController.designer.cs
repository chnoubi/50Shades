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
    [Register ("FirstLoginViewController")]
    partial class FirstLoginViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnConfirm { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIDatePicker datePicker { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgBackground { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView lblBeforeWeStart { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblDate { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblEmail { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblJustInCase { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextView lblTitle { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerGender { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITextField txtEmail { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnConfirm != null) {
                btnConfirm.Dispose ();
                btnConfirm = null;
            }

            if (datePicker != null) {
                datePicker.Dispose ();
                datePicker = null;
            }

            if (imgBackground != null) {
                imgBackground.Dispose ();
                imgBackground = null;
            }

            if (lblBeforeWeStart != null) {
                lblBeforeWeStart.Dispose ();
                lblBeforeWeStart = null;
            }

            if (lblDate != null) {
                lblDate.Dispose ();
                lblDate = null;
            }

            if (lblEmail != null) {
                lblEmail.Dispose ();
                lblEmail = null;
            }

            if (lblJustInCase != null) {
                lblJustInCase.Dispose ();
                lblJustInCase = null;
            }

            if (lblTitle != null) {
                lblTitle.Dispose ();
                lblTitle = null;
            }

            if (pickerGender != null) {
                pickerGender.Dispose ();
                pickerGender = null;
            }

            if (txtEmail != null) {
                txtEmail.Dispose ();
                txtEmail = null;
            }
        }
    }
}
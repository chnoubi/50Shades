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
        UIKit.UILabel lblDate { get; set; }

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

            if (lblDate != null) {
                lblDate.Dispose ();
                lblDate = null;
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
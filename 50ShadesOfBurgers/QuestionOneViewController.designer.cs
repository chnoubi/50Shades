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
        UIKit.UIButton btnNext { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerPain { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerViande { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnNext != null) {
                btnNext.Dispose ();
                btnNext = null;
            }

            if (pickerPain != null) {
                pickerPain.Dispose ();
                pickerPain = null;
            }

            if (pickerViande != null) {
                pickerViande.Dispose ();
                pickerViande = null;
            }
        }
    }
}
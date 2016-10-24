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
    [Register ("QuestionTwoThreeViewController")]
    partial class QuestionTwoThreeViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnNext { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerGarniture { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerSauce { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnNext != null) {
                btnNext.Dispose ();
                btnNext = null;
            }

            if (pickerGarniture != null) {
                pickerGarniture.Dispose ();
                pickerGarniture = null;
            }

            if (pickerSauce != null) {
                pickerSauce.Dispose ();
                pickerSauce = null;
            }
        }
    }
}
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
    [Register ("Top10ViewController")]
    partial class Top10ViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnCityTop { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnCountryTop { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIButton btnWorldTop { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIImageView imgBackground { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerCity { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UIPickerView pickerCountry { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (btnCityTop != null) {
                btnCityTop.Dispose ();
                btnCityTop = null;
            }

            if (btnCountryTop != null) {
                btnCountryTop.Dispose ();
                btnCountryTop = null;
            }

            if (btnWorldTop != null) {
                btnWorldTop.Dispose ();
                btnWorldTop = null;
            }

            if (imgBackground != null) {
                imgBackground.Dispose ();
                imgBackground = null;
            }

            if (pickerCity != null) {
                pickerCity.Dispose ();
                pickerCity = null;
            }

            if (pickerCountry != null) {
                pickerCountry.Dispose ();
                pickerCountry = null;
            }
        }
    }
}
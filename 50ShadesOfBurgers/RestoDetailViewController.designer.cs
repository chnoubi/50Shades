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
    [Register ("RestoDetailViewController")]
    partial class RestoDetailViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblRestoAdresse { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblRestoName { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UILabel lblRestoTel { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        MapKit.MKMapView mapViewResto { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (lblRestoAdresse != null) {
                lblRestoAdresse.Dispose ();
                lblRestoAdresse = null;
            }

            if (lblRestoName != null) {
                lblRestoName.Dispose ();
                lblRestoName = null;
            }

            if (lblRestoTel != null) {
                lblRestoTel.Dispose ();
                lblRestoTel = null;
            }

            if (mapViewResto != null) {
                mapViewResto.Dispose ();
                mapViewResto = null;
            }
        }
    }
}
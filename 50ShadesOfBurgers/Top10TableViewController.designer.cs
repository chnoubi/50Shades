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
    [Register ("Top10TableViewController")]
    partial class Top10TableViewController
    {
        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UITableView table { get; set; }

        [Outlet]
        [GeneratedCode ("iOS Designer", "1.0")]
        UIKit.UINavigationItem TableTitle { get; set; }

        void ReleaseDesignerOutlets ()
        {
            if (table != null) {
                table.Dispose ();
                table = null;
            }

            if (TableTitle != null) {
                TableTitle.Dispose ();
                TableTitle = null;
            }
        }
    }
}
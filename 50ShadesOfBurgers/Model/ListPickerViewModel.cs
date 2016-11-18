using CoreAnimation;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers.Model
{
    public class ListPickerViewModel<TItem> : UIPickerViewModel
    {
        public TItem SelectedItem { get; private set; }

        SortedSet<TItem> _items;
        public SortedSet<TItem> Items
        {
            get { return _items; }
            set { _items = value; Selected(null, 0, 0); }
        }

        public ListPickerViewModel()
        {
        }

        public ListPickerViewModel(SortedSet<TItem> items)
        {
            Items = items;
        }

        public override nint GetRowsInComponent(UIPickerView picker, nint component)
        {
            if (NoItem())
                return 1;
            return Items.Count;
        }

        public override string GetTitle(UIPickerView picker, nint row, nint component)
        {
            if (NoItem((int)row))
                return "";
            var item = Items.ElementAt((int)row);
            return GetTitleForItem(item);
        }

        public override void Selected(UIPickerView picker, nint row, nint component)
        {
            if (NoItem((int)row))
                SelectedItem = default(TItem);
            else
                SelectedItem = Items.ElementAt((int)row);
        }

        public override nint GetComponentCount(UIPickerView picker)
        {
            return 1;
        }

        public virtual string GetTitleForItem(TItem item)
        {
            return item.ToString();
        }

       private bool NoItem(int row = 0)
        {
            return Items == null || row >= Items.Count;
        }

        public override UIView GetView(UIPickerView pickerView, nint row, nint component, UIView view)
        {
          
            pickerView.Layer.BorderColor = UIColor.Gray.CGColor;
			pickerView.Layer.BackgroundColor = UIColor.White.CGColor;
          
            pickerView.Layer.BorderWidth = 1;
            pickerView.Layer.CornerRadius = 8;


            UILabel lbl = new UILabel(new RectangleF(0, 0, (float)pickerView.RowSizeForComponent(component).Width - 10.0f, (float)pickerView.RowSizeForComponent(component).Height * 2));
			lbl.TextColor = UIColor.Black;
            lbl.Font = UIFont.SystemFontOfSize(12f);
            lbl.TextAlignment = UITextAlignment.Center;
            lbl.LineBreakMode = UILineBreakMode.WordWrap;

            lbl.Lines = 0;
            lbl.Text = this.GetTitle(pickerView,row,component);
            return lbl;
        }
    }
}

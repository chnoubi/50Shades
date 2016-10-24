using System;
using System.Collections.Generic;
using System.Drawing;
using System.Linq;
using System.Text;
using UIKit;

namespace _50ShadesOfBurgers.Model
{
    public class QuestionPickerViewModel<String> : UIPickerViewModel
    {
        public string SelectedItem { get; private set; }

        List<string> _questions;
        public List<string> Questions
        {
            get { return _questions; }
            set { _questions = value; Selected(null, 0, 0); }
        }

        public QuestionPickerViewModel()
        {
        }

        public QuestionPickerViewModel(List<string> questions)
        {
            Questions = questions;
        }

        public override nint GetRowsInComponent(UIPickerView picker, nint component)
        {
            if (NoItem())
                return 1;
            return Questions.Count;
        }

        public override string GetTitle(UIPickerView picker, nint row, nint component)
        {
            if (NoItem((int)row))
                return "";
            var question = Questions.ElementAt((int)row);
            return GetTitleForItem(question);
        }

        public override void Selected(UIPickerView picker, nint row, nint component)
        {
            if (NoItem((int)row))
                SelectedItem = default(string);
            else
                SelectedItem = Questions.ElementAt((int)row);
        }

        public override nint GetComponentCount(UIPickerView picker)
        {
            return 1;
        }

        public virtual string GetTitleForItem(string question)
        {
            return question;
        }

        private bool NoItem(int row = 0)
        {
            return Questions == null || row >= Questions.Count;
        }

        public override UIView GetView(UIPickerView pickerView, nint row, nint component, UIView view)
        {
            pickerView.Layer.BorderColor = UIColor.Cyan.CGColor;
            pickerView.Layer.BorderWidth = 1;
            pickerView.Layer.CornerRadius = 8;

            UILabel lbl = new UILabel(new RectangleF(0, 0, (float) pickerView.RowSizeForComponent(component).Width - 10.0f, (float)pickerView.RowSizeForComponent(component).Height*2));
            lbl.TextColor = UIColor.Black;
            lbl.Font = UIFont.SystemFontOfSize(12f);
            lbl.TextAlignment = UITextAlignment.Center;
            lbl.LineBreakMode = UILineBreakMode.WordWrap;
           
            lbl.Lines = 0;
            lbl.Text = Questions[(int)row];
            return lbl;
        }
    }
}

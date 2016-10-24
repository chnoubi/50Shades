using System;
using System.Collections.Generic;
using System.Linq;
using Foundation;
using UIKit;

namespace _50ShadesOfBurgers
{
	public static class AutoCompleteTextFieldManager
	{
		private static List<AutoCompleteTextField> autoCompleteTextFields;

		public static void Add(UIViewController viewController, UITextField textView, List<string> elements)
		{
			if (autoCompleteTextFields == null)
			{
				autoCompleteTextFields = new List<AutoCompleteTextField>();
			}
			autoCompleteTextFields.Add(new AutoCompleteTextField(viewController, textView, elements));
		}

		public static void RemoveAll()
		{
			if (autoCompleteTextFields != null) autoCompleteTextFields.Clear();
		}

		private class AutoCompleteTextField
		{
			private UIViewController viewController;
			private UITextField textField;
			private int selectedIndex = -1;
			private List<string> elements;
			private List<string> matchedElements;
			private UITableView autoCompleteTableView;
			private UITableViewSource autoCompleteTableViewSource;
			private EventHandler textFieldEditingChangedHandler;

			public AutoCompleteTextField(UIViewController viewController, UITextField textView, List<string> elements)
			{
				this.viewController = viewController;
				this.textField = textView;
				this.selectedIndex = -1;
				this.elements = elements;
				this.matchedElements = this.elements.Where(e => e.ToLower().StartsWith(this.textField.Text.ToLower(),StringComparison.CurrentCultureIgnoreCase)).ToList();
				this.autoCompleteTableView = new UITableView(new CoreGraphics.CGRect(this.textField.Frame.X - 10, this.textField.Frame.Y + this.textField.Frame.Height, this.viewController.View.Frame.Width, this.viewController.View.Frame.Height - this.textField.Frame.Y - this.textField.Frame.Height));
				this.autoCompleteTableViewSource = new AutoCompleteTableViewSource(this.matchedElements, this.SelectedElement);
				this.autoCompleteTableView.ReloadData();
				this.autoCompleteTableView.ScrollEnabled = true;
				this.autoCompleteTableView.Hidden = true;
				this.autoCompleteTableView.TableFooterView = new UIView();
				//this.autoCompleteTableView.SeparatorColor = UIColor.Clear;
				this.viewController.View.AddSubview(this.autoCompleteTableView);

				this.textField.EditingChanged -= this.GetTextFieldEditingChangedHandler();
				this.textField.EditingChanged += this.GetTextFieldEditingChangedHandler();
			}

			private void SelectedElement(nint index)
			{
				this.selectedIndex = (int)index;
				string selectedElement = this.matchedElements[(int)this.selectedIndex];
				this.textField.Text = selectedElement;
				this.autoCompleteTableView.Hidden = true;
			}

			private EventHandler GetTextFieldEditingChangedHandler()
			{
				if (this.textFieldEditingChangedHandler == null)
				{
					this.textFieldEditingChangedHandler = delegate (object sender, EventArgs e)
					{
						this.selectedIndex = -1;
						this.autoCompleteTableView.Hidden = false;
						this.matchedElements = this.elements.Where(elem => elem.ToLower().Contains(this.textField.Text.ToLower())).ToList();
						this.autoCompleteTableViewSource = new AutoCompleteTableViewSource(this.matchedElements, this.SelectedElement);
						this.autoCompleteTableView.Source = this.autoCompleteTableViewSource;
						this.autoCompleteTableView.ReloadData();
					};
				}
				return this.textFieldEditingChangedHandler;
			}
		}

		private class AutoCompleteTableViewSource : UITableViewSource
		{
			private List<string> elements;
			private Action<nint> selectedElementCallback;

			public AutoCompleteTableViewSource(List<string> elements, Action<nint> selectedElementCallback)
			{
				this.elements = elements;
				this.selectedElementCallback = selectedElementCallback;
			}

			public override nint RowsInSection(UITableView tableview, nint section)
			{
				return elements.Count;
			}

			public override UITableViewCell GetCell(UITableView tableView, Foundation.NSIndexPath indexPath)
			{
				string element = this.elements[indexPath.Row];

				UITableViewCell cell = new UITableViewCell();
				cell.TextLabel.Text = element;
				cell.TextLabel.TextColor = UIColor.DarkGray;

				return cell;
			}

			public override void RowSelected(UITableView tableView, NSIndexPath indexPath)
			{
				if (selectedElementCallback != null) selectedElementCallback(indexPath.Row);
			}
		}
	}
}

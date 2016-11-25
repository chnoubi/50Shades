using System;
using System.Collections.Generic;

namespace _50ShadesOfBurgers
{
	public class CheckGrades
	{

		private bool[] selectedGrades = new bool[4];

		public bool[] SelectedGrades
		{
			get
			{
				return selectedGrades;
			}
			set
			{
				selectedGrades = value;
			}

		}

		public CheckGrades()
		{
			
		}

		public void grade(nint tag)
		{
			switch (tag)
			{
				case 1:
					{
						if (!this.SelectedGrades[0])
						{
							
							this.SelectedGrades[0] = true;
						}
						else {
							this.SelectedGrades[0] = false;
							this.SelectedGrades[1] = false;
							this.SelectedGrades[2] = false;
							this.SelectedGrades[3] = false;
						}
						break;
					}
			/*	case 2:
					{
						if (!selectedGrade2)
						{
							btnGrade2.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade1.SetImage(selectedGradeImg, UIControlState.Normal);
							selectedGrade1 = true;
							selectedGrade2 = true;
						}
						else {
							btnGrade2.SetImage(unselectedGradeImg, UIControlState.Normal);
							btnGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
							btnGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);
							selectedGrade2 = false;
							selectedGrade3 = false;
							selectedGrade4 = false;
						}
						break;
					}
				case 3:
					{
						if (!selectedGrade3)
						{
							btnGrade3.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade2.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade1.SetImage(selectedGradeImg, UIControlState.Normal);
							selectedGrade1 = true;
							selectedGrade2 = true;
							selectedGrade3 = true;
						}
						else {
							btnGrade3.SetImage(unselectedGradeImg, UIControlState.Normal);
							btnGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);
							selectedGrade3 = false;
							selectedGrade4 = false;
						}
						break;
					}
				case 4:
					{
						if (!selectedGrade4)
						{
							btnGrade4.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade3.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade2.SetImage(selectedGradeImg, UIControlState.Normal);
							btnGrade1.SetImage(selectedGradeImg, UIControlState.Normal);
							selectedGrade1 = true;
							selectedGrade2 = true;
							selectedGrade3 = true;
							selectedGrade4 = true;
						}
						else {
							btnGrade4.SetImage(unselectedGradeImg, UIControlState.Normal);
							selectedGrade4 = false;
						}
						break;
					}*/

			}

		}


	}
}

using System;
using System.Collections.Generic;

namespace _50ShadesOfBurgers
{
	public class Grades
	{
		//datamember to hold the scores of each selection
		private int score;


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

		public int getScore()
		{
			return this.score;
		}

		public void setScore(int score)
		{
			this.score = score;
		}

		public Grades()
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
				case 2:
					{
						if (!this.SelectedGrades[1])
						{

							this.SelectedGrades[0] = true;
							this.SelectedGrades[1] = true;
						}
						else {
							this.SelectedGrades[1] = false;
							this.SelectedGrades[2] = false;
							this.SelectedGrades[3] = false;
						}
						break;
					}
				case 3:
					{
						if (!this.SelectedGrades[2])
						{

							this.SelectedGrades[0] = true;
							this.SelectedGrades[1] = true;
							this.SelectedGrades[2] = true;

						}
						else {
							this.SelectedGrades[2] = false;
							this.SelectedGrades[3] = false;
						}
						break;
					}
				case 4:
					{
						if (!this.SelectedGrades[3])
						{

							this.SelectedGrades[0] = true;
							this.SelectedGrades[1] = true;
							this.SelectedGrades[2] = true;
							this.SelectedGrades[3] = true;


						}
						else {
							this.SelectedGrades[3] = false;
						}
						break;
					}

			}

		}


	}
}

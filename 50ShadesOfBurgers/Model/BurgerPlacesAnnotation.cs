using System;
using CoreLocation;
using MapKit;

namespace _50ShadesOfBurgers
{
	public class BurgerPlacesAnnotation : MKAnnotation
	{

		CLLocationCoordinate2D coord;
		string title;

		public override CLLocationCoordinate2D Coordinate { get { return coord; } }
		public override void SetCoordinate(CLLocationCoordinate2D value)
		{
			coord = value;
		}

		public override string Title { get { return title; } }

		public BurgerPlacesAnnotation(CLLocationCoordinate2D coordinate, string title)
		{
			this.coord = coordinate;
			this.title = title;
		}



	}
}

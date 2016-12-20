using System;
using MapKit;

namespace _50ShadesOfBurgers
{
	public class MapDelegate : MKMapViewDelegate
	{
		static string annotationId = "restoAnnotation";

		public MapDelegate()
		{
		}

		public override MKAnnotationView GetViewForAnnotation(MKMapView mapView, IMKAnnotation annotation)
		{
			MKAnnotationView annotationView = null;

			annotationView = mapView.DequeueReusableAnnotation(annotationId);

			if (annotationView == null) annotationView = new MKAnnotationView(annotation, annotationId);

			annotationView.CanShowCallout = true;
			(annotationView as MKPinAnnotationView).AnimatesDrop = true;

			return annotationView;

		}
	}
}

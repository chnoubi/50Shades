using System;
using System.Collections.Generic;

namespace _50ShadesOfBurgers
{
	public class PlaceDetailsClass
	{
		public List<string> html_attributions { get; set; }
		public Result result { get; set;}
		public string status { get; set; }
	}

	public class Result
	{
		public List<AddressComponents> address_components { get; set; }
		public string adr_address { get; set; }
		public string formatted_address { get; set; }
		public string formatted_phone_number { get; set; }
		public Geometry geometry { get; set; }
		public string icon { get; set; }
		public string id { get; set; }
		public string international_phone_number { get; set; }
		public string name { get; set; }
		public OpeningHours opening_hours { get; set; }
		public bool permanently_closed { get; set; }
		public List<Photo> photos { get; set; }
		public string place_id { get; set; }
		public List<AltIds> alt_ids { get; set; }
		public int price_level { get; set; }
		public double rating { get; set; }
		public string reference { get; set; }
		public List<Reviews> reviews { get; set; }
		public string scope { get; set; }
		public List<string> types { get; set; }
		public string url { get; set; }
		public int utc_offset { get; set; }
		public string vicinity { get; set; }
		public string website { get; set; }

	}


	public class AddressComponents
	{
		public string long_name { get; set; }
		public string short_name { get; set; }
		public List<string> types { get; set; }
	}

	public class Geometry
	{
		public Location location { get; set; }
		public Viewport viewport { get; set; }
	}

	public class Location
	{
		public double lat { get; set; }
		public double lng { get; set; }
	}

	public class Viewport
	{
		public Location northeast { get; set; }
		public Location southwest { get; set; }
	}

	public class OpeningHours
	{
		public bool open_now { get; set; }
		public List<Periods> periods { get; set; }
		public List<string> weekday_text { get; set; }
	}

	public class Periods
	{
		public DayTimeIntel open { get; set; }
		public DayTimeIntel close { get; set; }
	}

	public class DayTimeIntel
	{
		public int day { get; set; }
		public string time { get; set; }
	}

	public class Photo
	{
		public int height { get; set; }
		public List<string> html_attributions { get; set; }
		public string photo_reference { get; set; }
		public int width { get; set; }

	}

	public class AltIds 
	{
		public string place_id { get; set; }
		public string scope { get; set; }
	}

	public class Reviews
	{
		public List<Aspects> aspects { get; set; }
		public string author_name { get; set; }
		public string author_url { get; set; }
		public string language { get; set; }
		public string profile_photo_url { get; set; }
		public int rating { get; set; }
		public string relative_time_description { get; set; }
		public string text { get; set; }
		public long time { get; set; }
	}

	public class Aspects
	{
		public int rating { get; set; }
		public string type { get; set; }
	}
}

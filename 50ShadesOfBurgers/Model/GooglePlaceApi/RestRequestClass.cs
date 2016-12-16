using System;
using System.Threading.Tasks;
using System.Net;
using Newtonsoft.Json;

namespace _50ShadesOfBurgers
{
	public class RestRequestClass
	{
		static async Task<string> CallService(string strURL)
		{
			WebClient client = new WebClient ();
			string strResult;
			try
			{
				strResult=await client.DownloadStringTaskAsync (new Uri(strURL));
			}
			catch
			{
				strResult="Exception";
			}
			finally
			{
				client.Dispose ();
				client = null;
			}
			return strResult;
		}

		internal static async Task<LocationPredictionClass> LocationAutoComplete(string strFullURL)
		{
			LocationPredictionClass objLocationPredictClass = null;
			string strResult = await CallService (strFullURL);
			if(strResult!="Exception")
			{
				objLocationPredictClass= JsonConvert.DeserializeObject<LocationPredictionClass> (strResult);
			}
			return objLocationPredictClass;
		}

		internal static async Task<PlaceDetailsClass> PlaceDetails (string strFullURL)
		{
			PlaceDetailsClass objPlaceDetails = null;
			string strResult = await CallService(strFullURL);
			if (strResult != "Exception")
			{
				objPlaceDetails = JsonConvert.DeserializeObject<PlaceDetailsClass>(strResult);
			}
			return objPlaceDetails;
		}

	}
}


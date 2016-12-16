using _50ShadesOfBurgers;
using _50ShadesOfBurgers.Model;
using Foundation;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using UIKit;
using Google.Maps;


namespace _50ShadesOfBurgers
{
    // The UIApplicationDelegate for the application. This class is responsible for launching the 
    // User Interface of the application, as well as listening (and optionally responding) to 
    // application events from iOS.
    [Register("AppDelegate")]
    public class AppDelegate : UIApplicationDelegate
    {
        // class-level declarations
        //this storyboard
        UIStoryboard storyBoard = UIStoryboard.FromName("Main", null);
        public User user { get; set; }
        public Reponses reponses { get; set; }
        public Burger burger { get; set; }
        public Resto resto { get; set; }

        public List<Resto> restos;
        public List<Quest> questions;
       

        public Connections connection
        {
            get;
            private set;
        }

       
        public override UIWindow Window
        {
            get;
            set;
        }

        public override bool FinishedLaunching(UIApplication application, NSDictionary launchOptions)
        {
            // Override point for customization after application launch.
            // If not required for your application you can safely delete this method

            if (!Reachability.IsHostReachable("http://google.com"))
            {
                Window.RootViewController = (UIViewController)storyBoard.InstantiateViewController("NoInternetViewController");

            }
            else
            {

				Window = new UIWindow(UIScreen.MainScreen.Bounds);
                connection = new Connections();

                user = connection.getUser();
                reponses = connection.getReponses();
                burger = connection.getBurger();
                resto = connection.getResto();

                getRestoList();
                getQuestList();
                //check eerst als user app al heeft gebruikt
                if (string.IsNullOrEmpty(user.Uuid))
                {
                    Window.RootViewController = (UIViewController)storyBoard.InstantiateViewController("FirstLoginViewController");
                }
                else
                {
                    Window.RootViewController = (UIViewController)storyBoard.InstantiateViewController("MainMenuViewController");
                }

                Window.MakeKeyAndVisible();



                if (UIDevice.CurrentDevice.CheckSystemVersion(8, 0))
                {
                    var pushSettings = UIUserNotificationSettings.GetSettingsForTypes(
                                       UIUserNotificationType.Alert | UIUserNotificationType.Badge | UIUserNotificationType.Sound,
                                       new NSSet());

                    UIApplication.SharedApplication.RegisterUserNotificationSettings(pushSettings);
                    UIApplication.SharedApplication.RegisterForRemoteNotifications();
                }
                else
                {
                    UIRemoteNotificationType notificationTypes = UIRemoteNotificationType.Alert | UIRemoteNotificationType.Badge | UIRemoteNotificationType.Sound;
                    UIApplication.SharedApplication.RegisterForRemoteNotificationTypes(notificationTypes);
                }
            }

            return true;



        }



        public override void OnResignActivation(UIApplication application)
        {
            // Invoked when the application is about to move from active to inactive state.
            // This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) 
            // or when the user quits the application and it begins the transition to the background state.
            // Games should use this method to pause the game.
        }

        public override void DidEnterBackground(UIApplication application)
        {
            // Use this method to release shared resources, save user data, invalidate timers and store the application state.
            // If your application supports background exection this method is called instead of WillTerminate when the user quits.
        }

        public override void WillEnterForeground(UIApplication application)
        {
            // Called as part of the transiton from background to active state.
            // Here you can undo many of the changes made on entering the background.
        }

        public override void OnActivated(UIApplication application)
        {
            // Restart any tasks that were paused (or not yet started) while the application was inactive. 
            // If the application was previously in the background, optionally refresh the user interface.
        }

        public override void WillTerminate(UIApplication application)
        {
            // Called when the application is about to terminate. Save data, if needed. See also DidEnterBackground.
        }

        public override void RegisteredForRemoteNotifications(UIApplication application, NSData deviceToken)
        {
            // Get current device token
            var DeviceToken = deviceToken.Description;
            if (!string.IsNullOrWhiteSpace(DeviceToken))
            {
                DeviceToken = DeviceToken.Trim('<').Trim('>');
            }

            // Get previous device token
            var oldDeviceToken = NSUserDefaults.StandardUserDefaults.StringForKey("PushDeviceToken");

            // Has the token changed?
            if (string.IsNullOrEmpty(oldDeviceToken) || !oldDeviceToken.Equals(DeviceToken))
            {
                DeviceToken = DeviceToken.Replace(" ", string.Empty);
                user.DeviceToken = DeviceToken;
                connection.updateUser(user);
            }

            // Save new device token 
            NSUserDefaults.StandardUserDefaults.SetString(DeviceToken, "PushDeviceToken");
        }

        private void getRestoList()
        {
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.DownloadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var json = e.Result;
                restos = JsonConvert.DeserializeObject<List<Resto>>(json);

            });

            webClient.DownloadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getresto.php"));
        }

        private void getQuestList()
        {
            var webClient = new WebClient();
            webClient.Encoding = Encoding.UTF8;
            webClient.Headers[HttpRequestHeader.ContentType] = "application/x-www-form-urlencoded";

            webClient.DownloadStringCompleted += (s, e) => InvokeOnMainThread(() =>
            {
                var json = e.Result;
                questions = JsonConvert.DeserializeObject<List<Quest>>(json);

            });

            webClient.DownloadStringAsync(new Uri("http://dtsl.ehb.be/~ronald.hollander/pma/php/getquest.php"));
        }

    }
}
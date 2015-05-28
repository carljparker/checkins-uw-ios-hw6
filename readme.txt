When we went through the demo for location services in class, we used
some code similar to the following to request a particular class of
authorization from the user.

  if ([CLLocationManager authorizationStatus] == kCLAuthorizationStatusNotDetermined) {
        [self.locationManager requestWhenInUseAuthorization];
    }

We determined that the message sent to self.locationManager above needed to 
mirror the value that we specified in Info.plist, one of the following:

  NSLocationWhenInUseUsageDescription
  NSLocationAlwaysUsageDescription

However, if you use Xcode to edit Info.plist and you select a value from
the drop-down list, you get the following friendly string:

  Privacy - Location Usage Description

which gives you the following key in the Info.plist XML:

  <key>NSLocationUsageDescription</key>

In this case, what would be the corresponding message for
`[self.locationManager ...]` to request the user's permissions?  

I did not see anything in the Xcode autocomplete that corresponds to
this key. And if I use either of the other `request...` messages, the
user isn't ever presented the request to enable location services.


*** END ***


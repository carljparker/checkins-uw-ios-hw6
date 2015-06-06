# Homework 6 :: CP 125 iOS App Dev, Spring 2015 #

The files for this homework are also available at the following
repository on GitHub:

>  <https://github.com/carljparker/checkins-uw-ios-hw6>


## Implementation Issues (of Discoveries) ##

The following issues (or perhaps _discoveries_) came up in the process
of implementing the homework.

### Cannot Push a Navigation Controller ###

It doesn't appear to be possible for a navigation controller to push
another navigation controller.

The following code compiles but fails at runtime with the error:
`'NSInvalidArgumentException', reason: 'Pushing a navigation controller
is not supported'`

    GetImageViewController *getImageViewController = [[GetImageViewController alloc] init];
    GetImageNavController *getImageNavController = [[GetImageNavController alloc] initWithRootViewController:getImageViewController];
    
    [[self navigationController] pushViewController:getImageNavController animated:YES];


### Cannot Segue from a View Controller Embedded in a Nav Controller ###

I tried to do a segue from a VC embedded in a navigation controller to
another navigation controller. This failed with an error that the
sending VC did not have a segue with the identifier that I
specified--even though it did. We spent a lot of time at NSCoders trying
to understand why it was failing. We couldn’t come up with a good
explanation, but I did discover that the same segue works if I am coming
from just a VC rather than a VC embedded in a nav controller. 


## Questions ##

The following questions came up during the course of this homework
assignment. I posted these the the class discussion board.

### What is the Correct LocationManager Request for NSLocationUsageDescription? ###

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


### Why is id<> Required for MKAnnotation? ###

Why do I have to surround the type MKAnnotation with `id<...>`?

I use the following code to remove existing annotations from a MapView
before placing new annotations on it. The `id<...>` around MKAnnotation
seems to be required.

    for (id<MKAnnotation> annotation in self.mapView.annotations )
    {
      [self.mapView removeAnnotation:annotation];
    }


*** END ***


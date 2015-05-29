//
//  MapViewController.h
//  checkins-uw-ios-hw6
//
//  Created by Parker, Carl (HBO) on 5/29/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreLocation/CoreLocation.h>
#import <MapKit/MapKit.h>

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UISearchBarDelegate>

@end

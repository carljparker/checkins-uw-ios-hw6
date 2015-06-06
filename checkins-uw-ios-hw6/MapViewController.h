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

#import "CheckinInfo.h"

@class MapViewController;

@protocol MapViewControllerDelegate <NSObject>

@required

- (void)mapViewController:(MapViewController *)mapViewController
               didGetCheckinInfo:(CheckinInfo *)checkinInfo;

@end

@interface MapViewController : UIViewController <CLLocationManagerDelegate, MKMapViewDelegate, UISearchBarDelegate>

@property (nonatomic, weak) id<MapViewControllerDelegate> delegate;

@end

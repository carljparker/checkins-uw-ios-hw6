//
//  CheckinInfo.h
//  checkins-uw-ios-hw6
//
//  Created by Parker, Carl (HBO) on 5/31/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CheckinInfo : NSObject

@property (nonatomic, copy) NSString * location;

@property (nonatomic, copy) NSMutableArray * imageInfoList;

-(instancetype) initWithLocation:(NSString *)location;

@end

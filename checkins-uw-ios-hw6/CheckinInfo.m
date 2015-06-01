//
//  CheckinInfo.m
//  checkins-uw-ios-hw6
//
//  Created by Parker, Carl (HBO) on 5/31/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import "CheckinInfo.h"

@implementation CheckinInfo

-(instancetype)initWithLocation:(NSString *)location {
    
    self = [super init];
    
    if (self)
    {
        
        self.location = location;
        
    }
    
    return self;
    
}

@end
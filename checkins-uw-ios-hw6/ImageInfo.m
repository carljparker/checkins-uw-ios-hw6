//
//  ImageInfo.m
//  image-picker-uw-ios-hw5
//
//  Created by Parker, Carl (HBO) on 5/22/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//


#import "ImageInfo.h"


@implementation ImageInfo


-(instancetype)initWithImage:(UIImage *)image {
    
    self = [super init];
    
    if (self)
    {
        
        self.image = image;
        self.dateTaken = [[NSDate alloc] init];
        
    }
    
    return self;
    
}


@end

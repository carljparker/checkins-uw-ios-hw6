//
//  ImageInfo.h
//  image-picker-uw-ios-hw5
//
//  Created by Parker, Carl (HBO) on 5/22/15.
//  Copyright (c) 2015 Parker, Carl (HBO). All rights reserved.
//

#import <Foundation/Foundation.h>
#import "UIKit/UIKit.h"
#import "MobileCoreServices/MobileCoreServices.h"

@interface ImageInfo : NSObject

@property (strong) UIImage * image;

@property (strong) NSDate * dateTaken;

-(instancetype) initWithImage:(UIImage *)image;

@end

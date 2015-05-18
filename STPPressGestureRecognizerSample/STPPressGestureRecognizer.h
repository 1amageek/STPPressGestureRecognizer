//
//  STPPressGestureRecognizer.h
//  STPPressGestureRecognizerSample
//
//  Created by Norikazu on 2015/04/15.
//  Copyright (c) 2015年 Stamp inc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <UIKit/UIGestureRecognizerSubclass.h>

@interface STPPressGestureRecognizer : UIGestureRecognizer

@property (nonatomic) CGFloat touchSizeThreshold;   // default 35
@property (nonatomic, readonly) CGFloat touchSize;  

@end

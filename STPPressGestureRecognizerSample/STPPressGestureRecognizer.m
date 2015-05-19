//
//  STPPressGestureRecognizer.m
//  STPPressGestureRecognizerSample
//
//  Created by Norikazu on 2015/04/15.
//  Copyright (c) 2015年 Stamp inc. All rights reserved.
//

#import "STPPressGestureRecognizer.h"

@implementation STPPressGestureRecognizer


- (instancetype)initWithTarget:(id)target action:(SEL)action
{
    self = [super initWithTarget:target action:action];
    if (self) {
        _touchSizeThreshold = 35.0f;
        _touchSize = 0;
    }
    return self;
}

- (CGFloat)touchSize:(NSSet *)touches
{
    UITouch *touch = [touches anyObject];
    _touchSize = [[touch valueForKey:@"pathMajorRadius"] floatValue];
    return _touchSize;
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event
{
    [super touchesBegan:touches withEvent:event];
    
    if (self.state == UIGestureRecognizerStatePossible) {
        if (self.touchSizeThreshold < [self touchSize:touches]) {
            self.state = UIGestureRecognizerStateRecognized;
        } else {
            self.state = UIGestureRecognizerStateFailed;
        }
    }
}

- (void)reset
{
    [super reset];
    _touchSize = 0;
}

@end

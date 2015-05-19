# STPPressGestureRecognizer
This is GestureRecognizer for iOS. It works like Force Touch.


This GestureRecognizer uses the private properties of the iOS.
It has confirmed Force touch by obtaining the size of the touch.

# Usage

``` objective-c
#import "STPPressGestureRecognizer"
```

``` objective-c
self.pressGestureRecognzier = [[STPPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressGesture:)];
```

``` objective-c
- (void)pressGesture:(STPPressGestureRecognizer *)recognzier
{
    NSLog(@"pressGesture");
    self.view.backgroundColor = [UIColor colorWithRed:0.85 green:0.25 blue:0.25 alpha:1];
    
    [UIView animateWithDuration:0.85 animations:^{
        self.view.backgroundColor = [UIColor whiteColor];
    }];
    
}
```

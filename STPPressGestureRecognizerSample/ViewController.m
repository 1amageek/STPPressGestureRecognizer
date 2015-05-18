//
//  ViewController.m
//  STPPressGestureRecognizerSample
//
//  Created by Norikazu on 2015/04/15.
//  Copyright (c) 2015年 Stamp inc. All rights reserved.
//

#import "ViewController.h"
#import "STPPressGestureRecognizer.h"

@interface ViewController ()

@property (nonatomic) STPPressGestureRecognizer *pressGestureRecognzier;
@property (nonatomic) UITapGestureRecognizer *tapGestureRecognizer;
@property (nonatomic) UISwitch *interactiveSwitch;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    
    self.tapGestureRecognizer = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapGesture:)];
    self.pressGestureRecognzier = [[STPPressGestureRecognizer alloc] initWithTarget:self action:@selector(pressGesture:)];
    [self.view addGestureRecognizer:self.tapGestureRecognizer];
    [self.view addGestureRecognizer:self.pressGestureRecognzier];
}

- (void)viewWillLayoutSubviews
{
    self.interactiveSwitch.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2 - self.interactiveSwitch.bounds.size.width/2, [UIScreen mainScreen].bounds.size.height - self.interactiveSwitch.bounds.size.height - 20, 0, 0);
}

- (void)pressGesture:(STPPressGestureRecognizer *)recognzier
{
    NSLog(@"pressGesture");
    self.view.backgroundColor = [UIColor colorWithRed:0.85 green:0.25 blue:0.25 alpha:1];
    
    [UIView animateWithDuration:0.85 animations:^{
        self.view.backgroundColor = [UIColor whiteColor];
    }];
    
}

- (void)tapGesture:(UITapGestureRecognizer *)recognizer
{
    NSLog(@"tapGesture");
    self.view.backgroundColor = [UIColor colorWithRed:0.3 green:1.0 blue:0.75 alpha:1];
    
    [UIView animateWithDuration:0.85 animations:^{
        self.view.backgroundColor = [UIColor whiteColor];
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

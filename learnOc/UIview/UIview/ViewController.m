//
//  ViewController.m
//  UIview
//
//  Created by jiang feng on 15/6/2.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] init];
    view1.frame = CGRectMake(10, 10, 300, 30);
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 300, 30)];
    view2.backgroundColor = [UIColor blueColor];
    [view1 addSubview:view2];
    
    NSLog(@"view1 frame - x = %f", view1.frame.origin.x);
    NSLog(@"view1 frame - y = %f", view1.frame.origin.y);
    NSLog(@"view1 frame - w = %f", view1.frame.size.width);
    NSLog(@"view1 frame - h = %f", view1.frame.size.height);
    
    CGPoint point = view1.center;
    NSLog(@"view center - x = %f", point.x);
    NSLog(@"view center - y = %f", point.y);
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  ViewController.m
//  UIViewControllerDemo
//
//  Created by jiang feng on 15/1/28.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"
#import "UIViewController+MainViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIViewController *mvc = [[UIViewController alloc] init];
    [self.view addSubview:mvc.view];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

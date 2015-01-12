//
//  ViewController.m
//  viewChange IOS实现场景切换
//
//  Created by jiang feng on 15/1/12.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    
    view1.backgroundColor = [UIColor redColor];
    
    [self.view addSubview:view1];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 320, 460)];
    
    view2.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view2];
    
    
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

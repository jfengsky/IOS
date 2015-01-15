//
//  ViewController.m
//  UIviewLayer
//
//  Created by jiang feng on 15/1/15.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *redView = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 300, 100)];
    redView.backgroundColor = [UIColor redColor];
    [self.view addSubview:redView];
    
    UIView *yellowView = [[UIView alloc] initWithFrame:CGRectMake(10, 50, 100, 100)];
    yellowView.backgroundColor = [UIColor yellowColor];
    [self.view addSubview:yellowView];
    
    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(50, 40, 400, 50)];
    blueView.backgroundColor = [UIColor blueColor];
    [self.view addSubview:blueView];
    
    // 将某一个view放到最下面
    // [self.view sendSubviewToBack:blueView];
    
    // 把某一个view放到最上层
    // [self.view bringSubviewToFront:redView];
    
    UIView *greenView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 300, 200)];
    greenView.backgroundColor = [UIColor greenColor];
    // 插入指定view到指定层
    //[self.view insertSubview:greenView atIndex:3];
    
    // 插入view 到指定view的下层
    // [self.view insertSubview:greenView belowSubview:blueView];
    
    // 插入到指定view的上层
    //  [self.view insertSubview:greenView aboveSubview:yellowView];
    
    // 交换两个层的位置 按照index操作
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

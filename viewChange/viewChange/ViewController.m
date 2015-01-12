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
    
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(100, 100, 100, 30);
    
    [button addTarget:self action:@selector(buttonClick) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
    
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonClick{
    
    [UIView beginAnimations:nil context:nil];
    //持续时间
    [UIView setAnimationDuration:4.0];
    //在出动画的时候减缓速度
    [UIView setAnimationCurve:UIViewAnimationCurveEaseOut];
    //添加动画开始及结束的代理
    [UIView setAnimationDelegate:self];
    [UIView setAnimationWillStartSelector:@selector(begin)];
    [UIView setAnimationDidStopSelector:@selector(stopAni)];
    //动画效果
    [UIView setAnimationTransition:UIViewAnimationTransitionCurlUp forView:self.view cache:YES];
    [self.view exchangeSubviewAtIndex:0 withSubviewAtIndex:1];
    [UIView commitAnimations];
}

- (void)begin{
    NSLog(@"begin");
}

- (void)stopAni{
    NSLog(@"stop");
}
@end

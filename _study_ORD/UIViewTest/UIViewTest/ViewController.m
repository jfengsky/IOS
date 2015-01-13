//
//  ViewController.m
//  UIViewTest
//
//  Created by jiang feng on 15/1/13.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 300, 30)];
    
    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 100, 20)];
    
    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 5, 100, 20)];
    
    view1.backgroundColor = [UIColor redColor];
    
    view2.backgroundColor = [UIColor blueColor];
    
    view3.backgroundColor = [UIColor blackColor];
    
    [self.view addSubview:view1];
    
    [view1 addSubview:view2];
    
    [view1 addSubview:view3];
    
    // 设置视图的透明度
    view3.alpha = 0.5;
    
    // NSLog(@"%f",view2.frame.origin.x);
    
    // 得到view的中心点
    // CGPoint point = view2.center;
    
    // NSLog(@"x=%f;y=%f",point.x,point.y);
    
    // Do any additional setup after loading the view, typically from a nib.
    
    // 得到父类视图
    UIView *superView1 = view2.superview;
    superView1.backgroundColor = [UIColor greenColor];
    
    // 得到子类视图数组
    NSArray *subViews = view1.subviews;
//    for (UIView *view in subViews) {
//        view.backgroundColor = [UIColor redColor];
//    }
    
    UIView *view = [subViews objectAtIndex:0];
    view.backgroundColor = [UIColor yellowColor];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

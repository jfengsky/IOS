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
{
    UIView *_backView;
}
- (void)viewDidLoad {
    [super viewDidLoad];
    
//    UIView *view1 = [[UIView alloc] initWithFrame:CGRectMake(10, 30, 300, 30)];
//    
//    UIView *view2 = [[UIView alloc] initWithFrame:CGRectMake(5, 5, 100, 20)];
//    
//    UIView *view3 = [[UIView alloc] initWithFrame:CGRectMake(100, 5, 100, 20)];
//    
//    view1.backgroundColor = [UIColor redColor];
//    
//    view2.backgroundColor = [UIColor blueColor];
//    
//    view3.backgroundColor = [UIColor blackColor];
//    
//    [self.view addSubview:view1];
//    
//    [view1 addSubview:view2];
//    
//    [view1 addSubview:view3];
    
    // 设置视图的透明度
//    view3.alpha = 0.5;
    
    // NSLog(@"%f",view2.frame.origin.x);
    
    // 得到view的中心点
    // CGPoint point = view2.center;
    
    // NSLog(@"x=%f;y=%f",point.x,point.y);
    
    // Do any additional setup after loading the view, typically from a nib.
    
    // 得到父类视图
//    UIView *superView1 = view2.superview;
//    superView1.backgroundColor = [UIColor greenColor];
//    
//    // 得到子类视图数组
//    NSArray *subViews = view1.subviews;
//    for (UIView *view in subViews) {
//        view.backgroundColor = [UIColor redColor];
//    }
    
//    UIView *view = [subViews objectAtIndex:0];
//    view.backgroundColor = [UIColor yellowColor];
    
    
    
    
    // 自动布局
    
    _backView = [[UIView alloc] initWithFrame:CGRectMake(100, 300, 120, 120)];
    _backView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_backView];
    
    // 准许子类view自动布局
    _backView.autoresizesSubviews = YES;
    
    UIView *topView = [[UIView alloc] initWithFrame:CGRectMake(10, 10, 100, 100)];
    topView.backgroundColor = [UIColor orangeColor];
    
    // 设子自动布局方式
    topView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    
    [_backView addSubview:topView];
    
    // 设置定时器
    [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(timeTick) userInfo:nil repeats:YES];
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
}

-(void)timeTick
{
    // 设置宽度和高度跟随改变
    _backView.frame = CGRectMake(_backView.frame.origin.x, _backView.frame.origin.y, _backView.frame.size.width + 5, _backView.frame.size.height + 5);
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

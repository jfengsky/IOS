//
//  UISegmentedControlViewController.m
//  UISegmentedControl
//
//  Created by 姜峰 on 13-2-20.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UISegmentedControlViewController.h"

@interface UISegmentedControlViewController ()

@end

@implementation UISegmentedControlViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 创建
    NSArray *SegArray = [[NSArray alloc] initWithObjects:@"1", @"2", @"3", @"4", nil];
    UISegmentedControl *SegDemo = [[UISegmentedControl alloc]  initWithItems:SegArray];
    
    // 设置位置
    SegDemo.frame = CGRectMake(20.0, 20.0, 250.0, 50.0);
    
    //  设置默认选中
    SegDemo.selectedSegmentIndex = 2;
    
    // 设置颜色
    SegDemo.tintColor = [UIColor redColor];
    
    // 设置指定索引的标题
    [SegDemo setTitle:@"Two" forSegmentAtIndex:1];
    
    // 设置指定索引的宽度
    [SegDemo setWidth:100.00 forSegmentAtIndex:2];
    
    // 获取指定索引的标题
    NSString *segTitle = [NSString alloc];
    segTitle = [SegDemo titleForSegmentAtIndex:2];
    NSLog(@"%@", segTitle);
    
    // 显示
    [self.view addSubview:SegDemo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

//
//  UIButtonTestViewController.m
//  UIButtonTest
//
//  Created by 姜峰 on 13-2-19.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UIButtonTestViewController.h"

@interface UIButtonTestViewController ()

@end

@implementation UIButtonTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // 创建一个button
    UIButton *sampleButton = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    // 各种风格 UIButtonTypeDetailDisclosure UIButtonTypeInfoLight UIButtonTypeInfoDark
    
    // 设置背景图 forState 设置按钮状态
    [sampleButton setImage:[UIImage imageNamed:@"pic"] forState:UIControlStateNormal];
    
    
    
    
    // button位置
    [sampleButton setFrame:CGRectMake(10, 100, self.view.bounds.size.width- 20, 52)];
    
    // button 文字
    [sampleButton setTitle:@"Button Title" forState:UIControlStateNormal];
    
    // view中加入button
    [self.view addSubview:sampleButton];
    
    [sampleButton addTarget:self action:@selector(btnPressed:) forControlEvents:UIControlEventTouchUpInside];
	
}

-(void)btnPressed:(id)sender
{
    //    UIButton *btn = (UIButton *)sender;
    NSLog(@"btn Pressed");
}



@end

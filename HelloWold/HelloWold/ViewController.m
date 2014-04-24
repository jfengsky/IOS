//
//  ViewController.m
//  HelloWold
//
//  Created by 姜峰 on 14-4-17.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    // 创建一个label对象
    UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(0, 100, 200, 300)];
    
    // 设置显示内容
    label.text = @"jfeng的程序世界";
    
    // 设置背景颜色
    label.backgroundColor = [UIColor blueColor];
    
    // 设置文字颜色
    label.textColor = [UIColor whiteColor];
    
    // 设置文字位置居中显示
    label.textAlignment = UITextAlignmentCenter;
    
    // 设置字体大小
    label.font = [UIFont fontWithName:[[UIFont familyNames] objectAtIndex:10] size:20];
    
    // 将label添加到视图中
    [self.view addSubview:label];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void) buttonPressed:(id)Obj
{
    [self showDialog];
}

- (void) showDialog
{
    UIAlertView * alertA= [[UIAlertView alloc] initWithTitle:@"我的视图" message:@"点开了弹出对话框" delegate:self cancelButtonTitle:@"确定" otherButtonTitles: nil];
    [alertA addButtonWithTitle:@"取消"];
    [alertA show];
}


@end

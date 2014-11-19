//
//  ViewController.m
//  calculator
//
//  Created by jiang feng on 14/11/19.
//  Copyright (c) 2014年 www.ieake.com. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 创建UILabel用于显示数字
    UILabel *resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 60)];
    resultLabel.text = @"0";
    resultLabel.font = [UIFont systemFontOfSize: 40];
    resultLabel.textAlignment = 2;
    resultLabel.textColor = [UIColor blackColor];
    resultLabel.backgroundColor = [UIColor grayColor];
    
    // 创建数字按钮0
    UIButton *Button0 = [[UIButton alloc] initWithFrame:CGRectMake(10, 80, 60, 60)];
    [Button0 setTitle:@"0" forState:UIControlStateNormal];
    Button0.titleLabel.font = [UIFont systemFontOfSize: 40];
    // Button0.font = [UIFont fontWithName:@"Arial" size:40];
    [Button0 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
    Button0.backgroundColor = [UIColor  redColor];
    
    
    [self.view addSubview:resultLabel];
    [self.view addSubview:Button0];
    [Button0 addTarget:self action:@selector(Button0Event) forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)Button0Event
{
    NSLog(@"button 0");
}

@end

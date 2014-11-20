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
    UILabel *resultLabel;
- (void)viewDidLoad {
    UIButton *Buttons;
    NSString *nums;
    [super viewDidLoad];
    
    // 创建UILabel用于显示数字
    resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 60)];
    resultLabel.text = @"1";
    resultLabel.font = [UIFont systemFontOfSize: 40];
    resultLabel.textAlignment = 2;
    resultLabel.textColor = [UIColor blackColor];
    resultLabel.backgroundColor = [UIColor grayColor];
    int height = 60;
    int width = 60;
    int space = 10;
    int x_distance = 10;
    int y_distance = 80;
    int step;
    int ystep = 0;
    for (int i = 0; i < 10; i++) {
        
        // int转化为NSString
        nums = [[NSString alloc] initWithFormat:@"%d", i];
        step = i % 3;
        if (step == 0) {
            x_distance = 10;
            ystep++;
        }
        x_distance = space + (width + space) * step;
        y_distance = space + (height + space) * ystep;
        Buttons = [[UIButton alloc] initWithFrame:CGRectMake(x_distance, y_distance, height, width)];
        [Buttons setTitle:nums forState:UIControlStateNormal];
        Buttons.titleLabel.font = [UIFont systemFontOfSize: 40];
        [Buttons setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        Buttons.backgroundColor = [UIColor redColor];
        [self.view addSubview:Buttons];
        [Buttons addTarget:self action:@selector(ButtonEvent) forControlEvents:UIControlEventTouchUpInside];
    }
    
//    // 创建数字按钮0
//    UIButton *Button0 = [[UIButton alloc] initWithFrame:CGRectMake(10, 80, height, width)];
//    [Button0 setTitle:@"0" forState:UIControlStateNormal];
//    Button0.titleLabel.font = [UIFont systemFontOfSize: 40];
//    // Button0.font = [UIFont fontWithName:@"Arial" size:40];
//    [Button0 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    Button0.backgroundColor = [UIColor  redColor];
//    
//    // 创建数字按钮1
//    UIButton *Button1 = [[UIButton alloc] initWithFrame:CGRectMake(80, 80, 60, 60)];
//    [Button1 setTitle:@"1" forState:UIControlStateNormal];
//    Button1.titleLabel.font = [UIFont systemFontOfSize: 40];
//    // Button0.font = [UIFont fontWithName:@"Arial" size:40];
//    [Button1 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    Button1.backgroundColor = [UIColor  redColor];
//    
//    // 创建数字2
//    UIButton *Button2 = [[UIButton alloc] initWithFrame:CGRectMake(150, 80, 60, 60)];
//    [Button2 setTitle:@"2" forState:UIControlStateNormal];
//    Button2.titleLabel.font = [UIFont systemFontOfSize: 40];
//    // Button0.font = [UIFont fontWithName:@"Arial" size:40];
//    [Button2 setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
//    Button2.backgroundColor = [UIColor  redColor];
    
    [self.view addSubview:resultLabel];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ButtonEvent
{
    NSLog(@"0");
    resultLabel.text = @"0";
}

@end

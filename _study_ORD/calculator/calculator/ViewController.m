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
        [Buttons addTarget:self action:@selector(ButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        [self.view setTag:111];
        [self.view addSubview:Buttons];
    }
    
    // 创建+ = * / 和 c符号
    NSArray *mathSymbol = [NSArray arrayWithObjects:@"+", @"-", @"*", @"/", @"c", nil];
    for (NSString *simpleSymbol in mathSymbol) {
        NSLog(@"%@", simpleSymbol);
    }
    
    [self.view addSubview:resultLabel];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)ButtonEvent:(id)sender {
    NSString *labelValueString = resultLabel.text;
    int labelValue = [labelValueString intValue];
    NSLog(@"%d", labelValue);
    UIButton *btn = (UIButton *)sender;
    NSString *btnText = btn.titleLabel.text;
    resultLabel.text = btnText;
}

@end

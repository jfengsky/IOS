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
    UIButton *symbolButtons;
    NSString *nums;
    [super viewDidLoad];
    
    // 创建UILabel用于显示数字
    resultLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 20, 320, 60)];
    resultLabel.text = @"0";
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
        [self.view addSubview:Buttons];
    }
    
    // 创建+ = * / 和 c符号
    NSArray *mathSymbol = [NSArray arrayWithObjects:@"c", @"+", @"-", @"*", @"/",@"=", nil];
    int symbolButtonWidth = 90;
    int symbolButtonHeight = 60;
    int symbolStep = 1;
    for (NSString *simpleSymbol in mathSymbol) {
        NSLog(@"%@", simpleSymbol);
        symbolButtons = [[UIButton alloc] initWithFrame:CGRectMake((width * 3 + space * 4), space + ( symbolButtonHeight + space) * symbolStep, symbolButtonWidth, symbolButtonHeight)];
        [symbolButtons setTitle:simpleSymbol forState:UIControlStateNormal];
        symbolButtons.titleLabel.font = [UIFont systemFontOfSize: 40];
        [symbolButtons setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        symbolButtons.backgroundColor = [UIColor redColor];
        symbolStep++;
        [symbolButtons addTarget:self action:@selector(symbolButtonEvent:) forControlEvents:UIControlEventTouchUpInside];
        [self.view addSubview:symbolButtons];
    }
    
    [self.view addSubview:resultLabel];

    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// 监听数字按键
- (void)ButtonEvent:(id)sender {
    int resultNumberValue = 0;
    NSString *labelValueString = resultLabel.text;
    int labeNumberlValue = [labelValueString intValue];
    UIButton *btn = (UIButton *)sender;
    NSString *btnText = btn.titleLabel.text;
    int buttonNumberValue = [btnText intValue];
    
    if ( buttonNumberValue == 0 ) {
        if ( labeNumberlValue == 0 ) {
            resultNumberValue = 0;
        } else {
            resultNumberValue = labeNumberlValue * 10;
        }
    } else {
        resultNumberValue = labeNumberlValue * 10 + buttonNumberValue;
    }
    
    NSLog(@"%d", resultNumberValue);
    
    
    
    resultLabel.text = [[NSString alloc] initWithFormat:@"%d", resultNumberValue];
}

// 监听运算符按键
- (void)symbolButtonEvent:(id)sender{
    // NSString *symbolValueString = resultLabel.text;
    UIButton *symbolEventButton = (UIButton *)sender;
    NSString *symbolButtonEventValue = symbolEventButton.titleLabel.text;
    
    // 清0
    NSString *symbolClear = @"c";
    if ( symbolButtonEventValue == symbolClear ) {
        resultLabel.text = @"0";
    }
    
    // 加号 +
    NSString *symbolAdd = @"+";
//    if (symbolButtonEventValue == symbolAdd) {
//        <#statements#>
//    }
    
}

@end

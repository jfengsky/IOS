//
//  LabelTestViewController.m
//  LabelTest
//
//  Created by 姜峰 on 13-2-19.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "LabelTestViewController.h"

@interface LabelTestViewController ()

@end

@implementation LabelTestViewController
@synthesize LabelDemo;


- (IBAction)textChange:(UIButton *)sender {
    LabelDemo.text = @"textChange";
}

- (IBAction)clearBackground:(UIButton *)sender {
    LabelDemo.backgroundColor = [UIColor clearColor];
}

- (IBAction)textShadow:(UIButton *)sender {
    LabelDemo.shadowColor = [UIColor blueColor];
}

- (IBAction)backgroundChange:(UIButton *)sender {
    LabelDemo.backgroundColor = [UIColor grayColor];
}

- (IBAction)alignLeft:(UIButton *)sender {
    LabelDemo.textAlignment = UITextAlignmentLeft;
}

- (IBAction)alignMiddle:(UIButton *)sender {
    LabelDemo.textAlignment = UITextAlignmentCenter;
}

- (IBAction)alignRight:(UIButton *)sender {
    LabelDemo.textAlignment = UITextAlignmentRight;
}

@end

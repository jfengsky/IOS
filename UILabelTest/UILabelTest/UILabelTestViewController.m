//
//  UILabelTestViewController.m
//  UILabelTest
//
//  Created by 姜峰 on 13-2-20.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UILabelTestViewController.h"

@interface UILabelTestViewController ()

@end

@implementation UILabelTestViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// create a new UILabel with position  
    UILabel *LabelDemo = [[UILabel alloc] initWithFrame:CGRectMake(20, 40, 280, 80)];
    
    // set text
    LabelDemo.text = @"LabelDemo abcd 1234 中文测试";
    
    //文本是否可变
    LabelDemo.enabled = YES;
    
    // set fontsize
    LabelDemo.font = [UIFont fontWithName:@"Arial" size:30];
    
    // set tag
    LabelDemo.tag = 91;
    
    // set textAlign
    LabelDemo.textAlignment = UITextAlignmentCenter;        // center
    // LabelDemo.textAlignment = UITextAlignmentLeft;       // left
    // LabelDemo.textAlignment = UITextAlignmentRight;     // right
    
    // set text color
    LabelDemo.textColor = [UIColor redColor];
    
    // set text shadow
    LabelDemo.shadowColor = [UIColor grayColor];
    
    // set shadow offect
    LabelDemo.shadowOffset = CGSizeMake(1.0, 1.0);
    
    
    //去掉label背景色
    //LabelDeom.backgroundColor = [UIColor clearColor];
    
    // set line's number
    LabelDemo.numberOfLines = 1;
    // LabelDemo.numberOfLines = 0;                     // auto lines
    
    // 超出label边界文字的截取方式
    LabelDemo.lineBreakMode = UILineBreakModeMiddleTruncation;
    // UILineBreakModeWordWrap = 0,    以空格为边界，保留整个单词
    // UILineBreakModeCharacterWrap,   保留整个字符
    // UILineBreakModeClip,            到边界为止
    // UILineBreakModeHeadTruncation,  省略开始，以……代替
    // UILineBreakModeTailTruncation,  省略结尾，以……代替
    // UILineBreakModeMiddleTruncation,省略中间，以……代替，多行时作用于最后一行
    
    // 文本文字自适应大小
    LabelDemo.adjustsFontSizeToFitWidth = NO;
    //当adjustsFontSizeToFitWidth=YES时候，如果文本font要缩小时
    //baselineAdjustment这个值控制文本的基线位置，只有文本行数为1是有效
    
    //是否能与用户交互
    LabelDemo.userInteractionEnabled = YES;
    
    // show Label in View
    [self.view addSubview:LabelDemo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

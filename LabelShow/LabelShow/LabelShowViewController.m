//
//  LabelShowViewController.m
//  LabelShow
//
//  Created by 姜峰 on 13-1-28.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "LabelShowViewController.h"



@implementation LabelShowViewController

@synthesize ShowScreem = _ShowScreem;


- (IBAction)btnPress:(UIButton *)sender
{
    NSString *btnTitle = sender.currentTitle;
//    NSLog(@"%@", btnTitle);
//    _ShowScreem.text = btnTitle;
    self.ShowScreem.text = [NSString stringWithString:btnTitle];
    // 在现有内容之后显示
//    self.ShowScreem.text = [self.ShowScreem.text stringByAppendingString:btnTitle];
}
@end

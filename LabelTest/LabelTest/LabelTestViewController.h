//
//  LabelTestViewController.h
//  LabelTest
//
//  Created by 姜峰 on 13-2-19.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelTestViewController : UIViewController
@property (weak, nonatomic) IBOutlet UILabel *LabelDemo;

- (IBAction)textChange:(UIButton *)sender;

- (IBAction)backgroundChange:(UIButton *)sender;

- (IBAction)alignLeft:(UIButton *)sender;

- (IBAction)alignMiddle:(UIButton *)sender;

- (IBAction)alignRight:(UIButton *)sender;

- (IBAction)clearBackground:(UIButton *)sender;

- (IBAction)textShadow:(UIButton *)sender;

@end

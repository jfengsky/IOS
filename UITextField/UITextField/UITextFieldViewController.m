//
//  UITextFieldViewController.m
//  UITextField
//
//  Created by 姜峰 on 13-2-20.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UITextFieldViewController.h"

@interface UITextFieldViewController ()

@end

@implementation UITextFieldViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    //  创建一个UItextField
    UITextField *textDemo = [[UITextField alloc] initWithFrame:CGRectMake(10, 50, 300, 30)];
    
    // 设置文本
    // textDemo.text = @"中文 文本测试";
    
    textDemo.placeholder = @"设置默认文本";
    
    // 设置文本框风格
    textDemo.borderStyle = UITextBorderStyleRoundedRect;
    
    // 高亮文本输入框return按钮
    textDemo.returnKeyType = UIReturnKeyDone;
    
    textDemo.delegate = self;
    
    // 显示UITextField
    [self.view addSubview:textDemo];
    
    
    
}

//  按下Done 键盘消失
- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [textField resignFirstResponder];
    return YES;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

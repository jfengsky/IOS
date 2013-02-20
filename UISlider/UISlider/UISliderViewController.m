//
//  UISliderViewController.m
//  UISlider
//
//  Created by 姜峰 on 13-2-20.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UISliderViewController.h"

@interface UISliderViewController ()

@end

@implementation UISliderViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // 创建slider
    UISlider *sliderDemo = [[UISlider alloc] initWithFrame:CGRectMake(0, 0, 200, 20)];
    
    // 最小值
    sliderDemo.minimumValue = 0;
    
    // 最大值
    sliderDemo.maximumValue = 100;
    
    // 响应事件
//    [sliderDemo addTarget:self action:@selector(sliderChanged:) forControlEvents:UIControlEventValueChanged];
    
    [self.view addSubview:sliderDemo];
    
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

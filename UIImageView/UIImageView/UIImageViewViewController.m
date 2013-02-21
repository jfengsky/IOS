//
//  UIImageViewViewController.m
//  UIImageView
//
//  Created by 姜峰 on 13-2-21.
//  Copyright (c) 2013年 jfengsky@gmail.com. All rights reserved.
//

#import "UIImageViewViewController.h"

@interface UIImageViewViewController ()

@end

@implementation UIImageViewViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // 创建一个UIImageView
    // UIImageView *ImageViewDemo = [[UIImageView alloc] init];
    UIImageView *ImageViewDemo = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 1440, 900)];
    // UIImageView *ImageViewDemo = [[UIImageView alloc] initWithImage:<#(UIImage *)#>];
    // UIImageView *ImageViewDemo = [[UIImageView alloc] initWithImage:(UIImage *) highlightedImage:(UIImage *)];
    // UIImageView *imageView5 = [[UIImageView alloc] initWithCoder:(NSCoder *)];
    
    // 加载图片
    ImageViewDemo.image = [UIImage imageNamed:@"Demo.jpg"];
    
    // 网址方法加载图片
    // UIimage *img = [[UIImage alloc] initWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:@"http://www.ieake.com/image.img"]]];
    // UIImageView *ImageViewDemo = [[UIImageView alloc] initWithImage:img];
    
//    如果找到图片，装载到iPhone系统缓存图象。那意味图片是(理论上)放在内存里作为cache的。因此如果图片资源多了或大了，此方式容易引起发生内存警告从而导致自动退出的问题。
    
//    最好是通过直接读取文件路径[UIImage imageWithContentsOfFile]解决掉这个问题.
    
    
//    NSImage *image = [[NSImage alloc]initWithContentsOfURL:(NSURL *)];
    
//    NSImage *image = [[NSImage alloc]initWithContentsOfFile:(NSString *)];
    
    //  旋转图像
//    ImageViewDemo.transform = CGAffineTransformMakeRotation(20);
    
    
    // 重设image位置
    ImageViewDemo.frame = CGRectMake(0, 0, 1440, 900);
    
    // 缩放image 不等比例
    // ImageViewDemo.bounds = CGRectMake(100, 100, 160, 180);
    
    // 修改图片的中心点，缩放 旋转等都是基于这个中心点
    // ImageViewDemo.center = CGPointMake(100, 100);
    
    // 移动图片
    // ImageViewDemo.transform = CGAffineTransformMakeTranslation(10, 10);
    // 表示想要往x或者y方向移动多少，而不是移动到多少。
    
    // 等比例缩放图片
    // ImageViewDemo.transform = CGAffineTransformMakeScale(0.8, 0.8);
    
    [ImageViewDemo sizeToFit];
//    imageView.hidden = YES或者NO;    // 隐藏或者显示图片
//    imageView.alpha = (CGFloat) al;    // 设置透明度
//    imageView.highlightedImage = (UIImage *)hightlightedImage; 	// 设置高亮时显示的图片
//    imageView.image = (UIImage *)image;	// 设置正常显示的图片
    [self.view addSubview:ImageViewDemo];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

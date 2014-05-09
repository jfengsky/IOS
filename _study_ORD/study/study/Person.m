//
//  Person.m
//  study
//
//  Created by 姜峰 on 14-5-8.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import "Person.h"

@implementation Person


-(void) Print {
    NSLog(@"radius: %d", radius);
    NSLog(@"x: %d", x);
    NSLog(@"y: %d", y);
}

-(void)setR:(int)_r andX:(int)_x andY:(int)_Y {
    radius = _r;
    x = _x;
    y = _Y;
}

+ (int)allNum {
    return YES;
}

@end

//
//  circle.m
//  circle
//
//  Created by 姜峰 on 14-1-2.
//  Copyright (c) 2014年 姜峰. All rights reserved.
//

#import "circle.h"

@implementation circle

// @synthesize radius;

-(void)print{
    NSLog(@"radius:%d X:%d Y:%d", radius,x,y);
}

-(void) setR:(int)_r andX:(int)_x andY:(int)_y{
    radius = _r;
    x = _x;
    y = _y;
}

+(int)allNum{
    return sum;
}

@end

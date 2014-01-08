//
//  circle.h
//  circle
//
//  Created by 姜峰 on 14-1-2.
//  Copyright (c) 2014年 姜峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface circle : NSObject
{
    int radius;
    int x;
    int y;
}

static int sum = 5;
// @property(nonatomic) int radius;

-(void)print;

-(void) setR:(int)_r andX:(int)_x andY:(int)_y;

+(int)allNum;

@end

//
//  Person.h
//  study
//
//  Created by 姜峰 on 14-5-8.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int radius;
    int x;
    int y;
}

// static int sum = 5;

- (void) x;

- (void) y;

- (void) radius;

- (void) Print;

- (void) setX:(int)_x;

- (void) setY:(int)_y;

- (void) setR:(int)_r andX:(int)_x andY:(int)_Y;

+ (int)allNum;

@end

// mType (returnType) name1:(type1)param1 name2:(type2)param2 ...
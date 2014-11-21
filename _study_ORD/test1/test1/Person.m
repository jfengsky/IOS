//
//  Person.m
//  test1
//
//  Created by jiang feng on 14/11/21.
//  Copyright (c) 2014年 jiang feng. All rights reserved.
//

#import "Person.h"

@implementation Person
- (id) initWithAge:(int) _age identify:(int) _identify
{
    if (self == [super init]) {
        age = _age;
        identify = _identify;
    }
    return self;
};

- (int) getIdentify
{
    return identify;
};

- (int) getAge
{
    return age;
};

- (void) setAge:(int) _age
{
    age = _age;
};

@end

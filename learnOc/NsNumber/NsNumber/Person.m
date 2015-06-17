//
//  Person.m
//  NsNumber
//
//  Created by jiang feng on 15/5/27.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import "Person.h"

@implementation Person

- (void) test
{
    NSLog(@"这是现有类的一个方法");
}

@end

@implementation Person (Creation)

+ (id) personWithName:(NSString *)aName
{
    Person *person = [[Person alloc] init];
};

+ (id) personWithName:(NSString *)aName withAge:(int)age
{
    
};

- (id) initWithName:(NSString *)aName
{
    
};

- (id) initWithName:(NSString *)aName withAge:(int)age
{
    
};

@end
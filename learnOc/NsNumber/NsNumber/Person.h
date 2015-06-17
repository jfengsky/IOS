//
//  Person.h
//  NsNumber
//
//  Created by jiang feng on 15/5/27.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    @private
    NSString *_name;
    int _age;
}

- (void) test;

@end


@interface Person (Creation)

+ (id) personWithName:(NSString *)aName;

+ (id) personWithName:(NSString *)aName withAge:(int)age;

- (id) initWithName:(NSString *)aName;

- (id) initWithName:(NSString *)aName withAge:(int)age;

@end


@interface Person (Life)

- (void) eat;

- (void) sleep;

- (void) play;

@end
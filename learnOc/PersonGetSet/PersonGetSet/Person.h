//
//  Person.h
//  PersonGetSet
//
//  Created by jiang feng on 15/5/7.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject {
    int myNunber;
}

//- (int) myNumber;
//- (void) setMyNumber:(int)  _number;

@property(nonatomic) int myNumber;

//- (void) printInfo;



@end

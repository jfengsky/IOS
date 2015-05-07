//
//  main.m
//  PersonGetSet
//
//  Created by jiang feng on 15/5/7.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"
int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        Person *person = [[Person alloc] init];
        [person setMyNumber:100];
        NSLog(@"myNumber:%d", [person myNumber]);
    }
    return 0;
}

//
//  main.m
//  study
//
//  Created by 姜峰 on 14-5-8.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Person.h"

int main(int argc, const char * argv[])

{

    @autoreleasepool {
        
        // insert code here...
        NSLog(@"Hello, World!");
        
        Person* person= [[Person alloc] init];
        [person setR:3 andX:4 andY:5];
        [person Print];
        
    }
    return 0;
}


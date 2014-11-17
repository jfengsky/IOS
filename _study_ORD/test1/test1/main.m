//
//  main.m
//  test1
//
//  Created by jiang feng on 14/11/17.
//  Copyright (c) 2014年 jiang feng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        int a = 11;
        int b = 10;
        int c = a + b;
        
        char str1 = "A";
        
        NSString *str2 = @"abcdeft";
        
        NSLog(@"c: %d", c);
        
        NSLog(@"str2: %s", str1);
    }
    return 0;
}

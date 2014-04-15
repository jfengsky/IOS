//
//  main.m
//  DataType
//
//  Created by 姜峰 on 14-1-18.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
//        int i = 0;
//        while (i < 10) {
//            NSLog(@"%d", i);
//            i++;
//        }
        int i = 0;
        do{
            i++;
            if (i == 5) {
                continue;
            }
            NSLog(@"%d", i);
        } while (i< 10);
        
    }
    return 0;
}


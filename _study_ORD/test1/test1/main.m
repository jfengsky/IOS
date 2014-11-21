//
//  main.m
//  test1
//
//  Created by jiang feng on 14/11/17.
//  Copyright (c) 2014年 jiang feng. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Person.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        Person *person;
        person = [[Person alloc] initWithAge:30 identify:425423452];
        
        NSLog(@"%p", person);
        
        [person setAge:10];
        
        NSLog(@"age:%d", person.getAge);
    }
    return 0;
}

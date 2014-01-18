//
//  student.h
//  Obcjective
//
//  Created by 姜峰 on 14-1-18.
//  Copyright (c) 2014年 姜峰. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface student : NSObject {
    NSString* name;
    int age;
}

- (NSString*) name;
- (int) age;
- (void) setName: (NSString*) input;
- (void) setAge: (int) input;

@end

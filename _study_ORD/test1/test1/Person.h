//
//  Person.h
//  test1
//
//  Created by jiang feng on 14/11/21.
//  Copyright (c) 2014年 jiang feng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int identify;
    int age;
}
- (id) initWithAge:(int) _age identify:(int) _identify;
- (int) getIdentify;
- (int) getAge;
- (void) setAge:(int) _age;
@end

//
//  Person.h
//  std1
//
//  Created by 姜峰 on 14-4-15.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Person : NSObject
{
    int indentify;
    int age;
}
-(id) initWidthAge:(int) _age identify:(int) _indentify;
-(int) getIndentify;
-(int) getAge;
-(void) setAge:(int) _age;
@end

//
//  Person.m
//  std1
//
//  Created by 姜峰 on 14-4-15.
//  Copyright (c) 2014年 jfeng. All rights reserved.
//

#import "Person.h"

@implementation Person
-(id) initWidthAge:(int) _age identify:(int) _indentify
{
    if( self = [super init]){
        age = _age;
        indentify  = _indentify;
    }
}

-(int) getIndentify
{
    return indentify;
}

-(int) getAge
{
    return age;
}

-(void) setAge:(int) _age
{
    age = _age;
}
@end

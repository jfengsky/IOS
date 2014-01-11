//
//  main.m
//  study
//
//  Created by 姜峰 on 14-1-11.
//  Copyright (c) 2014年 姜峰. All rights reserved.
//

#import <Foundation/Foundation.h>

BOOL areIntsDifferent(int thing1, int thing2)
{
    if (thing1 == thing2) {
        return (NO);
    } else {
        return (YES);
    }
}

NSString *boolString(BOOL yesNo){
    if (yesNo == NO) {
        return (@"NO");
    } else{
        return (@"YES");
    }
}

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        BOOL areTheyDifferent;
        
        areTheyDifferent = areIntsDifferent(5, 5);
        
        NSLog(@"are %d and %d different? %@", 5, 5, boolString(areTheyDifferent));
        
    }
    return 0;
}


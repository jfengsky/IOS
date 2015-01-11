//
//  main.m
//  window
//
//  Created by jiang feng on 15/1/11.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        NSApplication *app = [NSApplication sharedApplication];
        
        NSRect rc = NSMakeRect(0, 0, 800, 600);
        
        NSUInteger uiStyle = NSTitledWindowMask | NSResizableWindowMask | NSClosableWindowMask;
        
        NSBackingStoreType backingStoreStyle = NSBackingStoreBuffered;
        
        NSWindow *win = [[NSWindow alloc] initWithContentRect:rc styleMask:uiStyle backing:backingStoreStyle defer: YES];
        
        [win setTitle:@"HelloWin Text"];
        
        [win makeKeyAndOrderFront:win];
        
        [win makeMainWindow];
        
        [NSApp run];
        
        
        // insert code here...
        NSLog(@"Hello, World!");
    }
    return 0;
}

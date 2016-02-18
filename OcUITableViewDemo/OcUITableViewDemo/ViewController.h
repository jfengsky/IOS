//
//  ViewController.h
//  OcUITableViewDemo
//
//  Created by jiangfeng on 16/2/18.
//  Copyright © 2016年 jiangfeng. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController<UITableViewDataSource,UITableViewDelegate>
@property (nonatomic, retain) NSMutableDictionary *dataDict;
@property (nonatomic, retain) UITableView *myTableView;


@end


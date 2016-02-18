//
//  ViewController.m
//  OcUITableViewDemo
//
//  Created by jiangfeng on 16/2/18.
//  Copyright © 2016年 jiangfeng. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize dataDict;
@synthesize myTableView;

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 初始化数据
    NSArray *array1 = [NSArray arrayWithObjects:@"数据11",@"数据12",@"数据13",@"数据14",@"数据15",@"数据16", nil];
    NSArray *array2 = [NSArray arrayWithObjects:@"数据21",@"数据22",@"数据23",@"数据24", nil];
    NSArray *array3 = [NSArray arrayWithObjects:@"数据31",@"数据32",@"数据33", nil];
    
    NSMutableDictionary *dict = @{@"老张家":array1, @"老李家":array2, @"老王家":array3};
    
//    NSMutableDictionary *dict = [NSMutableDictionary dictionaryWithObjectsAndKeys:@"分类1",array1,@"分类2",array2,@"分类3",array3, nil];
    
    self.dataDict = dict;
    
    UITableView *tempTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, 460) style:UITableViewStylePlain];
    
    tempTableView.delegate = self;
    tempTableView.dataSource = self;
    
    
    self.myTableView = tempTableView;
    [self.view addSubview:tempTableView];
    
    
}

//指定每个分区中有多少行，默认为1
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [[self.dataDict objectForKey:[[self.dataDict allKeys]objectAtIndex:section]] count];
}

//改变行的高度（实现主个代理方法后 rowHeight 设定的高度无效）
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 40;
}

//绘制Cell
-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    static NSString *SimpleTableIdentifier = @"SimpleTableIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier: SimpleTableIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier: SimpleTableIdentifier];
    }
    
    cell.textLabel.text=[[self.dataDict objectForKey:[[self.dataDict allKeys]objectAtIndex:indexPath.section]]objectAtIndex:indexPath.row];
    
    return cell;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end

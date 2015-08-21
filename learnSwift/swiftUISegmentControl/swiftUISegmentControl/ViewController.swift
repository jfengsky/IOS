//
//  ViewController.swift
//  swiftUISegmentControl
//
//  Created by jiang feng on 15/8/21.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 设置分段控件的标题
    var titleArray:[String] = ["标题一","标题二","标题三","标题四","标题五"]
    
    // 创建分段控件对象
    var segment = UISegmentedControl(items: titleArray)
    
    // 分段控件的位置和大小
    segment.frame = CGRectMake(20, 100, 320, 40)
    
    // 分段控件放到视图上
    self.view.addSubview(segment)
    
    // 默认选中第一个
    segment.selectedSegmentIndex = 0
    
    // 设置下标为2的标题
    // segment.setTitle("新坐标三标题", forSegmentAtIndex: 2)
    
    // 在坐标为2的位置,插入一个分段标题
    // segment.insertSegmentWithTitle("分段标题", atIndex: 2, animated: true)
    
    // 获取segment数量
    // var segmentCount = segment.numberOfSegments
    // println(segmentCount)
    
    // 获取选中的坐标
    // var segmentIndex = segment.selectedSegmentIndex
    // println(segmentIndex)
    
    // 获取某个下标的标题
    // var tempSegmentTitle = segment.titleForSegmentAtIndex(1)
    // println(tempSegmentTitle)
    
    // 设置下标为3的图片,图片和标题不能共存,设置图片后,原来标题就不显示了
    // segment.setImage(UIImage(named: "pic2.jpg"), forSegmentAtIndex: 3)
    
    // 在坐标为4的位置,插入一个分段图片
    // segment.insertSegmentWithImage(UIImage(named: "pic2.jpg")!, atIndex: 2, animated: true)
    
    // 获取某一个下标下的图片
    // var tempImage = segment.imageForSegmentAtIndex(2)
    // println(tempImage)
    
    // 设置某一分段是否可用
    // segment.setEnabled(false, forSegmentAtIndex: 3)
    
    // 设置下标为1的分段宽度
    // segment.setWidth(80, forSegmentAtIndex: 1)
    
    // 获取下标为0的分段的宽度
    // var tempWidth = segment.widthForSegmentAtIndex(1)
    // println(tempWidth)
    
    // 设置内容偏移
    // segment.setContentOffset(CGSizeMake(10, 10), forSegmentAtIndex: 2)
    
    // 获取某个下标分段内容的偏移
    // var tempSize = segment.contentOffsetForSegmentAtIndex(2)
    // println(tempSize)
    // println("-----")
    
    // 获取标题颜色
    // var tempColor = segment.tintColor
    // println(tempColor)
    
    // 设置标题的颜色
    // segment.tintColor = UIColor.redColor()
    
    // 是否根据segment的内容改变宽度
    segment.apportionsSegmentWidthsByContent = true
    
    // 移除下标3的分段
    // segment.removeSegmentAtIndex(2, animated: true)
    
    // 移除所有分段
    // segment.removeAllSegments()
    
    // 添加事件,当segment改变时触发
    segment.addTarget(self, action: "segmentDidChange", forControlEvents: UIControlEvents.ValueChanged)
    
    // Do any additional setup after loading the view, typically from a nib.
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  
  
  func segmentDidChange(segmented: UISegmentedControl){
    println(segmented.selectedSegmentIndex)
    println(segmented.titleForSegmentAtIndex(segmented.selectedSegmentIndex))
  }
  
  
//  func segmentChange(sender: AnyObject?){
//    var segment:UISegmentedControl = sender as! UISegmentedControl
//    switch segment.selectedSegmentIndex {
//      case 0:
//        println("000")
//      case 1:
//        println("111")
//      case 2:
//        println("2222")
//      default:
//        println("default")
//    }
//  }

}


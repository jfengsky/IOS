//
//  ViewController.swift
//  swiftUITextView
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
  
  var textView = UITextView(frame: CGRectMake(10.0, 120.0, 300.0, 200.0))
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    // 创建UITextView对象
//    var textView = UITextView(frame: CGRectMake(10.0, 120.0, 300.0, 200.0))
    
    // 设置背景颜色
    textView.backgroundColor = UIColor.grayColor()
    
    // 添加到视图上
    self.view.addSubview(textView)
    
    // 设置字体颜色
    textView.textColor = UIColor.blackColor()
    
    // 设置字体和大小
    // textView.font = UIFont.systemFontOfSize(18) // 使用系统默认字体，指定18号字号
    textView.font = UIFont(name: "Helvetica-Bold", size: 12) // 指定字体和大小
    
    // 设置对齐方式
    textView.textAlignment = NSTextAlignment.Right
    
    // 是否允许点击链接和附件
    textView.selectable = true
    
    // 键盘类型
    textView.keyboardType = UIKeyboardType.Default
    
    // 返回键的类型
    textView.returnKeyType = UIReturnKeyType.Done
    
    // 是否可以滚动
    textView.scrollEnabled = true
    
    // 自适应高度
    textView.autoresizingMask = UIViewAutoresizing.FlexibleHeight
    
    // 设置显示文本
    // textView.text = "经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！"
    
    var attributeString:NSMutableAttributedString=NSMutableAttributedString(string: "经常听到：\n 被中介骗了，押金不退，晚一天交房租，被讹了。\n\n租房普遍现象：\n网上报价不真实？经常被忽悠！（看房时报价都比网上高！）\n证件不齐全，被骗过!（其实根本不是房东啦!）\n看房前态度都很热情！\n签约之后态度骤变!\n入住后家电维修只能靠自己！\n房屋到期，押金各种被勒索！\n\n现在开始，你来改变这一切！\n《租房点评》为你而备，租房无忧！\n\n再也不用担心被欺骗，想要知道给你介绍房子的人好不好，《租房点评》告诉你！")
    
    // 设置字体颜色
    attributeString.addAttribute(NSForegroundColorAttributeName, value: UIColor.greenColor(), range: NSMakeRange(0, attributeString.length))
    
    // 文本所有字符字体HelveticaNeue-Bold，16号
    attributeString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 16)!, range: NSMakeRange(0, attributeString.length))
    
    // 文本0开始5个字符字体HelveticaNeue-Bold，26号
    attributeString.addAttribute(NSFontAttributeName, value: UIFont(name: "HelveticaNeue-Bold", size: 26)!, range: NSMakeRange(0, 5))
    
    //设置文字背景颜色
    attributeString.addAttribute(NSBackgroundColorAttributeName, value: UIColor.orangeColor(), range: NSMakeRange(3, 3))
    
    // 赋值富文本
    textView.attributedText = attributeString
    
    // 默认选中一段文本
    textView.becomeFirstResponder()
    textView.selectedRange = NSMakeRange(30, 10)
    
    // 获取内容整体高度
    var viewHeight: CGFloat = textView.contentSize.height
    // println(viewHeight)
    
    // -----自定义菜单
    var menuItem1: UIMenuItem = UIMenuItem(title: "分享到微博", action: "shareWBMenu")
    var menuItem2: UIMenuItem = UIMenuItem(title: "分享到微信", action: "shareWXMenu")
    
    // 获取菜单控制器
    var menuController: UIMenuController = UIMenuController.sharedMenuController()
    menuController.menuItems = [menuItem1, menuItem2]
    
    // 指定代理
    // textView.delegate = self
    
    
    // 文本框开始 编辑 时触发
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "textDidBeginEditing", name: UITextViewTextDidBeginEditingNotification, object: nil)
    
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "textDidEndEditing", name: UITextViewTextDidEndEditingNotification, object: nil)
    
    NSNotificationCenter.defaultCenter().addObserver(self, selector: "textDidChange", name: UITextViewTextDidChangeNotification, object: nil)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
  
  // 显示按钮方法
  override func canPerformAction(action: Selector, withSender sender: AnyObject?) -> Bool {
    // 判断有没有选中文字
    // 如果有选择,输出选择的文本
    
    var isSelect: Bool = textView.selectedRange.length > 0
    
    if(action == "shareWXMenu:" && isSelect) {
      return true
    } else if(action == "shareWBMenu:" && isSelect) {
      return true
    }
    
    return true
    
  }
  
  func textViewShouldBeginEditing(textView: UITextView) -> Bool {
    return true // 如果返回false，文本视图不能编辑
  }
  
  func textViewShouldEndEditing(textView: UITextView) -> Bool {
    return true // 如果返回false，表示编辑结束之后，文本视图不可再编辑
  }
  
  func textViewDidBeginEditing(textView: UITextView) {
    // 文本视图开始编辑，这个时候我们可以处理一些事情
  }
  
  func textViewDidEndEditing(textView: UITextView) {
    // 文本视图编辑结束，这个时候我们可以处理一些事情
  }
  
  func textView(textView: UITextView, shouldChangeTextInRange range: NSRange, replacementText text: String) -> Bool {
    
     // 文本视图内容改变时，触发本方法，能得到改变的坐标和改变的内容
    
     //如果是回车符号，则textView释放第一响应值，返回false
    if (text ==  "\n") {
      textView.resignFirstResponder()
      return false;
    }
    
    return true
    
  }
  
  func textViewDidChange(textView: UITextView) {
    // 文本视图改变后触发本代理方法
  }
  
  func textViewDidChangeSelection(textView: UITextView) {
    //文本视图 改变选择内容，触发本代理方法
  }
  
  func textView(textView: UITextView, shouldInteractWithURL URL: NSURL, inRange characterRange: NSRange) -> Bool {
    // 链接在文本中显示。当链接被点击的时候，会触发本代理方法
    return true
  }
  
  func textView(textView: UITextView, shouldInteractWithTextAttachment textAttachment: NSTextAttachment, inRange characterRange: NSRange) -> Bool {
    //文本视图允许提供文本附件，文本附件点击时，会触发本代理方法
    return true
  }
  
  func textDidBeginEditing(){
    println("开始输入文本...")
  }
  
  func textDidEndEditing(){
    println("结束输入...")
  }
  
  func textDidChange(){
    println("正在输入...")
  }
  
  func shareWXMenu(sender: AnyObject?){
    if textView.selectedRange.length > 0 {
      println( (textView.text as NSString).substringWithRange(textView.selectedRange) )
    }
    
    println("这里实现 分享微信 功能")
  }
  
  func shareWBMenu(sender: AnyObject){
    println("这里实现 分享微博 功能")
  }


}


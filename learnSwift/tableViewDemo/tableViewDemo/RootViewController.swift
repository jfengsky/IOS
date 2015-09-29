//
//  RootViewController.swift
//  tableViewDemo
//
//  Created by jiang feng on 15/9/22.
//  Copyright © 2015年 www.ieake.com. All rights reserved.
//

import Foundation
import UIKit

class RootViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
  
    // 创建数据源
    var dataArr = NSMutableArray()
    var _tableView: UITableView?
  
    override func viewDidLoad() {
        super.viewDidLoad()
      
      for(var i = 0; i < 20; i++){
        dataArr.addObject("row \(i)")
      }
      
      // 取得self.view的区域
      let rect: CGRect = self.view.bounds
      _tableView = UITableView(frame: rect, style: UITableViewStyle.Plain)
      _tableView?.delegate = self
      _tableView?.dataSource = self
      self.view.addSubview(_tableView!)
      
        // Do any additional setup after loading the view.
    }
  
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return dataArr.count
    }
  
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
      let cellid = "my cell id"
      var cell = tableView.dequeueReusableCellWithIdentifier(cellid) as UITableViewCell?
      
      if cell == nil {
        cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: cellid)
      }
      
      let s = dataArr.objectAtIndex(indexPath.row) as? String
      cell!.textLabel?.text = s
      return cell!
      
    }
  
    // 点击table单元格触发的方法
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
      print("row \(indexPath.row) selected")
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

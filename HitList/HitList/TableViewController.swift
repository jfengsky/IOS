//
//  TableViewController.swift
//  HitList
//
//  Created by jiangfeng on 15/11/4.
//  Copyright © 2015年 jiangfeng. All rights reserved.
//

import UIKit
import CoreData

class TableViewController: UITableViewController {
    
        @IBAction func addName(sender: AnyObject) {
            var alert = UIAlertController(title: "New Name", message: "请输入一个名字", preferredStyle: UIAlertControllerStyle.Alert)
            
            let saveAction = UIAlertAction(title: "保存", style: .Default) { (action: UIAlertAction!) -> Void in
                let textField = alert.textFields![0] as UITextField
                
                self.names.append(textField.text!)
                
                self.saveName(textField.text!)
                
                self.tableView.reloadData()
                
            }
            
            let cancelAction = UIAlertAction(title: "取消", style: .Default) { (action: UIAlertAction) -> Void in
                
            }
            
            alert.addAction(saveAction)
            alert.addAction(cancelAction)
            
            alert.addTextFieldWithConfigurationHandler { (textField: UITextField!) -> Void in
                
            }
            
            self.presentViewController(alert, animated: true) { () -> Void in
                
            }
            
            
        }
    
        func saveName(name: String) {
            
        }
    
        // 保存姓名
        var names = [String]()
    
        var people = [NSManagedObject]()
    
        override func viewDidLoad() {
        super.viewDidLoad()
            
            title = "姓名列表"

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return people.count
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath)
        
        let person = people[indexPath.row]
        
        cell.textLabel!.text = person.valueForKey("name") as! String
        
        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

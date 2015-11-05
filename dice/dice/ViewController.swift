//
//  ViewController.swift
//  dice
//
//  Created by jiangfeng on 15/11/5.
//  Copyright © 2015年 jiangfeng. All rights reserved.
//

import UIKit

enum SelectType {
    case Big, Same, Small
}

class ViewController: UIViewController {
    
    @IBOutlet var dice1ImageView: UIImageView!
    
    @IBOutlet var dicd2ImageView: UIImageView!
    
    @IBOutlet var dice3ImageView: UIImageView!
    
    @IBOutlet var playerLabel: UILabel!
    
    @IBOutlet var bossLabel: UILabel!
    
    var timer = NSTimer?()
    var imageNumber = 0
    
    var disc1Number = 0
    var disc2Number = 0
    var disc3Number = 0
    
    var playerMoney = 1000
    var bossMoney = 1000
    
    var selectType = SelectType.Big
    
    func judgeResult(){
        switch selectType {
        case .Big:
            if disc1Number + disc2Number + disc3Number > 11 {
                playerMoney = playerMoney  + 30
                bossMoney = bossMoney - 30
            } else {
                playerMoney = playerMoney  - 30
                bossMoney = bossMoney + 30
            }
        case .Same:
            if disc1Number == disc2Number && disc1Number == disc3Number  {
                playerMoney = playerMoney  + 200
                bossMoney = bossMoney - 200
            } else {
                playerMoney = playerMoney  - 200
                bossMoney = bossMoney + 200
            }
        case .Small:
            if disc1Number + disc2Number + disc3Number <= 11 {
                playerMoney = playerMoney  + 30
                bossMoney = bossMoney - 30
            } else {
                playerMoney = playerMoney  - 30
                bossMoney = bossMoney + 30
            }
        default:
            break
        }
        playerLabel.text = String(playerMoney)
        bossLabel.text = String(bossMoney)
    }
    
    func changeImage(){
        let i1 = arc4random() % 6 + 1
        var name = "骰子" + String(i1) + ".png"
        var image = UIImage(named: name)
        dice1ImageView.image = image
        disc1Number = Int(i1)
        
        let i2 = arc4random() % 6 + 1
        name = "骰子" + String(i2) + ".png"
        image = UIImage(named: name)
        dicd2ImageView.image = image
        disc2Number = Int(i2)
        
        let i3 = arc4random() % 6 + 1
        name = "骰子" + String(i3) + ".png"
        image = UIImage(named: name)
        dice3ImageView.image = image
        disc3Number = Int(i3)
        
        imageNumber++
        
        if imageNumber > 20 {
            timer?.invalidate()
            imageNumber = 0
            judgeResult()
        }
    }
    
    @IBAction func buyBig(sender: AnyObject) {
        
        selectType = .Big
        
        // 定时器来控制换图片
        timer?.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "changeImage", userInfo: nil, repeats: true)
        
    }
    
    @IBAction func buySmall(sender: AnyObject) {
        selectType = .Small
        timer?.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "changeImage", userInfo: nil, repeats: true)
        
    }
    
    @IBAction func buySame(sender: AnyObject) {
        selectType = .Same
        timer?.invalidate()
        timer = NSTimer.scheduledTimerWithTimeInterval(0.1, target: self, selector: "changeImage", userInfo: nil, repeats: true)
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


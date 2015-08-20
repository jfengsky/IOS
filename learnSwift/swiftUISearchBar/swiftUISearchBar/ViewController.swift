//
//  ViewController.swift
//  swiftUISearchBar
//
//  Created by jiang feng on 15/8/20.
//  Copyright (c) 2015年 www.ieake.com. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    
    var searchBar = UISearchBar(frame: CGRectMake(10, 120, 300, 30))
    searchBar.showsCancelButton = true
    searchBar.searchBarStyle = UISearchBarStyle.Minimal
    self.view.addSubview(searchBar)
    
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}


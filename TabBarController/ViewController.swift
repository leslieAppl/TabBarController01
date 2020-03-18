//
//  ViewController.swift
//  TabBarController
//
//  Created by leslie on 3/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 1
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func updateBadge(_ sender: UIButton) {
        let item = tabBarItem
        item?.badgeValue = String(counter)
        counter += 1
    }
}


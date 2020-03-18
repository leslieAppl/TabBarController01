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

    @IBAction func updateBadgeBtnPressed(_ sender: UIButton) {
        //MARK: - UITabBarItem
        let item = tabBarItem
        item?.badgeValue = String(counter)
        counter += 1
    }
    
    @IBAction func showNextViewBtnPressed(_ sender: UIButton) {
        //Only need to do is to set value on the SecondViewController
        //Don't need to perform segue here
        //Because, TabBarController will do that.
        //There are tow different missions. One is about Data, the other is about segue.
        let list = tabBarController?.viewControllers!
        let controller = list?[1] as! SecondViewController
        controller.myProperty = 0
    }
}


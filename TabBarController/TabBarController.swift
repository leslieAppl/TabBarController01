//
//  TabBarController.swift
//  TabBarController
//
//  Created by leslie on 3/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class TabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        //MARK: - UITabBar
        let bar = tabBar
        
        bar.tintColor = UIColor.white
        bar.isTranslucent = true
        bar.backgroundImage = UIImage(named: "tabbar")
        
        
    }

}

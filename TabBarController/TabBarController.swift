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
        
        selectedIndex = 1   // show the 2nd tab view on screen
        
        let list = viewControllers! // [UIViewController?] list managed by UITabBar class
        let controller = list[0] as! ViewController
        let tab = controller.tabBarItem // the tab involved in its view controller
        tab?.badgeValue = String(20)
    }

}

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
        //MARK: UITabBarController Delegate
        delegate = self
        
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

extension TabBarController: UITabBarControllerDelegate {
    func tabBarController(_ tabBarController: UITabBarController, didSelect viewController: UIViewController) {
        let list = viewControllers!
        let controller = list[1]
        if viewController == controller {
            print("It's Settings")
        }
    }
    
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        //Decide if the view controller’s tab should be selected or the current tab should remain active.
        if let controller = viewController as? SecondViewController {
            let control = controller.myProperty
            if control != 0 {
                //only if the property is not equal to 0, do not show this view
                return false
            }
        }
        
        // else return true to show this view
        return true
    }
}

//
//  SecondViewController.swift
//  TabBarController
//
//  Created by leslie on 3/18/20.
//  Copyright © 2020 leslie. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var myProperty: Int!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        myProperty = 1
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewWillAppear\(myProperty)")
    }
    
    @IBAction func showSelfBtnPressed(_ sender: UIButton) {
        myProperty = 0
        print(myProperty)
    }
    
    @IBAction func notShowSelfBtnPressed(_ sender: UIButton) {
        myProperty = 1
        print(myProperty)
        
        //Switch tab programmatically
        tabBarController?.selectedIndex = 0
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

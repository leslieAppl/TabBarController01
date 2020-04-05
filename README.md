# Tab Bar Controller

## Here becomes tow different missions in the TabBarController. 
One is about Data sending in the UIViewController, 
the other is about Segue ViewController in the UITabBarController!!
- Using UIViewController.tabBarController?.viewControllers property

        class ViewController: UIViewController {
                        
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

- Using UITabBarController.tabBarItem property
- using UITabBarController.viewControllers property
        
        class TabBarController: UITabBarController {

            override func viewDidLoad() {
                super.viewDidLoad()
                //MARK: - UITabBarController Delegate
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

- Using UITabBarController subclass

- Implemented UITabBarController Delegate method - didSelect viewController

- Implemented UITabBarController Delegate method - shouldSelect viewController

- Switch tab programmatically
        
        @IBAction func notShowSelfBtnPressed(_ sender: UIButton) {
            myProperty = 1
            print(myProperty)
            
            //Switch tab programmatically
            tabBarController?.selectedIndex = 0
        }



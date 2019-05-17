//
//  DKTabBarController.swift
//  DailyKorean
//
//  Created by MountainX on 2019/5/16.
//  Copyright © 2019 MTX Software Technology Co.,Ltd. All rights reserved.
//

import UIKit

class DKTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        setup()
    }
    
    func setup() {
        let vc1 = DKWebViewController()
        vc1.view.backgroundColor = UIColor.orange
        vc1.tabBarItem = UITabBarItem(tabBarSystemItem: .mostViewed, tag: 1)
        
        let vc2 = WKJSDemoViewController()
        vc2.view.backgroundColor = UIColor.yellow
        vc2.tabBarItem = UITabBarItem(tabBarSystemItem: .favorites, tag: 2)
        
        let vc3 = DKBaseViewController()
        vc3.view.backgroundColor = UIColor.gray
        vc3.tabBarItem = UITabBarItem(tabBarSystemItem: .history, tag: 3)
        
        let vc4 = DKBaseViewController()
        vc4.view.backgroundColor = UIColor.magenta
        vc4.tabBarItem = UITabBarItem(tabBarSystemItem: .search, tag: 4)
        
        viewControllers = [vc1, vc2, vc3, vc4]
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

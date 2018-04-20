//
//  tabBarViewController.swift
//  swift_demo
//
//  Created by 蜂尚网络 on 2018/4/18.
//  Copyright © 2018年 王绵峰. All rights reserved.
//

import UIKit

class tabBarViewController: UITabBarController {
   
   

   @objc func centerAction() {
        print("点击中间按钮")
    }
    
  @objc func leftAction() {
        print("点击左侧按钮")
    }
    
  @objc func rightAction() {
        print("点击右侧按钮")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = UIColor.yellow
        let cusBar = cusTabBar.init()
        self.setValue(cusBar, forKey: "tabBar")
        
       
        let homeVC = homeViewController()
       
        self.addchildVC(child: homeVC, title: "", color: UIColor.black)
        
        let twoVC = twoViewController()
        self.addchildVC(child: twoVC, title: "我的", color: UIColor.black)
        self.viewControllers = [homeVC,twoVC]
    }

    
    
    //添加自控制器方法
    func addchildVC(child:UIViewController,title:String,color:UIColor) -> Void {
//        let navc = UINavigationController.init(rootViewController: child)
        let navc = UINavigationController()
        navc.addChildViewController(child)
        navc.navigationBar.tintColor = UIColor.white
        navc.navigationBar.barTintColor = UIColor.yellow
        self.addChildViewController(navc)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
}

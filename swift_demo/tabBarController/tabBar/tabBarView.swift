//
//  tabBarView.swift
//  swift_demo
//
//  Created by 蜂尚网络 on 2018/4/19.
//  Copyright © 2018年 王绵峰. All rights reserved.
//

import UIKit
import ObjectiveC
//
//protocol tabBarDelegate:NSObjectProtocol {
//
//    func centerAction(btn:UIButton)//中间按钮代理方法
//    func leftBtnAction(btn:UIButton)//left
//    func rightBtnAction(btn:UIButton)
//}


class tabBarView: UIView {
    
    @IBOutlet var leftBtn: customBtn!
    @IBOutlet var rightBtn: myBtn!
//    weak var delegate : tabBarDelegate?
    
    
    override func awakeFromNib() {
        self.leftBtn.isSelected = true
    }
    
    @IBAction func centerBtnAction(_ sender: UIButton) {
        let tabbar = tabBarViewController()
       tabbar.perform(#selector(tabbar.centerAction))
    }
    
    @IBAction func leftBtnAction(_ sender: customBtn) {
           let tabbar = tabBarViewController()
        if sender.isSelected == false {
            sender.isEnabled = true
           
            rightBtn.isSelected = false
            tabbar.perform(#selector(tabbar.leftAction))
        }
         sender.isSelected = true
    }
    
    
    @IBAction func rightBtnAction(_ sender: myBtn) {
           let tabbar = tabBarViewController()
        if sender.isSelected == false {
            sender.isEnabled = true
            leftBtn.isSelected = false
            tabbar.perform(#selector(tabbar.rightAction))
        }
        sender.isSelected = true
    }
}

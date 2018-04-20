//
//  cusTabBar.swift
//  swift_demo
//
//  Created by 蜂尚网络 on 2018/4/19.
//  Copyright © 2018年 王绵峰. All rights reserved.
//

import UIKit

class cusTabBar: UITabBar {
    
    var tabBar = UIView()
    override init(frame: CGRect) {
     super.init(frame: frame)
        self.tabBar = Bundle.main.loadNibNamed("tabBarView", owner: nil, options: nil)?.last as!UIView
      self.addSubview(self.tabBar)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.tabBar.frame = self.bounds
        self.bringSubview(toFront: self.tabBar)
    }
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

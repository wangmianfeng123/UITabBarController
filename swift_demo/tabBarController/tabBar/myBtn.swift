//
//  myBtn.swift
//  swift_demo
//
//  Created by 蜂尚网络 on 2018/4/19.
//  Copyright © 2018年 王绵峰. All rights reserved.
//

import UIKit

class myBtn: UIButton {

    override func layoutSubviews() {
        super.layoutSubviews()
        var center: CGPoint = (self.imageView?.center)!
        
        center.x = self.frame.width/2
        center.y = (self.frame.size.height/2)-10
        self.imageView?.center = center
        
        var newFrame:CGRect = (self.titleLabel?.frame)!
        newFrame.origin.x = 0
        newFrame.origin.y = (self.imageView?.frame.maxY)!+2
        newFrame.size.width = self.frame.size.width
        self.titleLabel?.frame = newFrame
        self.titleLabel?.textAlignment = .center
    }
    
}

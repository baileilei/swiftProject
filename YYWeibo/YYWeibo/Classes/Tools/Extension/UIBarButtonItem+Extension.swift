//
//  UIBarButtonItem+Extension.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

extension UIBarButtonItem{
    
    convenience init(title: String) {
        self.init()
        
        let button = UIButton()
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.sizeToFit()
        
        customView = button
    }
    
}

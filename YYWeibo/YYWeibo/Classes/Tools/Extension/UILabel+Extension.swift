//
//  UILabel+Extension.swift
//  YYWeibo
//
//  Created by g on 2018/10/15.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

extension UILabel{
    convenience init(textColor:UIColor,fontSize:CGFloat,isMultiNumbers:Int?){
        self.init()
//        let label : UILabel = UILabel()
        self.font = UIFont.systemFont(ofSize: fontSize)
        self.textColor = textColor
        self.numberOfLines = isMultiNumbers ?? 1
        
        
    }
    
    
}

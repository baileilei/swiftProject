//
//  UIColor+Extension.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

//  创建随机颜色的函数
func RandomColor() -> UIColor {
    //  产生随机的色值
    let red = arc4random() % 256
    let green = arc4random() % 256
    let blue = arc4random() % 256
    
    return UIColor(red: CGFloat(red) / 255, green: CGFloat(green) / 255, blue: CGFloat(blue) / 255, alpha: 1)
}

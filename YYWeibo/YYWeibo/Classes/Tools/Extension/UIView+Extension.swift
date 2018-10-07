//
//  UIView+Extension.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

extension UIView{
    //分类的作用：此处从frame这个属性 转变为 x这个属性。   因为更常用，所以更加直接！！！
    //以往访问view的x属性需要frame.origin.x, 现在可以直接访问x了。   实质还是一样的！！别无二致！！计算属性！！
    
    //拓展思考：继承，子类会继承父类的属性，如果子类重写了父类的属性会怎样？ 子类为主。 继承也就是有而已！！！
    //model呢？
    var x : CGFloat {
        get{ return frame.origin.x}
        set{frame.origin.x = newValue}
    }
    
    var y : CGFloat{
        get{ return frame.origin.y}
        set{ frame.origin.y = newValue}
    }
    
    var width :CGFloat{
        get{ return frame.size.width}
        set{ frame.size.width = newValue}
    }
    
    var height : CGFloat{
        get{ return frame.size.height}
        set{ frame.size.height = newValue}
    }
    
//    var center : CGPoint {//center 已经是唯一的属性了
//        get{ return bounds}
//        set{ center = newValue}
//    }
    
    var centerX: CGFloat {
        get { return center.x}
        set { center.x = newValue}
    }
    
    var centerY: CGFloat {
        get {return center.y}
        set {center.y = newValue}
    }
    
    var size: CGSize {
        get {return frame.size}
        set {frame.size = newValue}
    }
}

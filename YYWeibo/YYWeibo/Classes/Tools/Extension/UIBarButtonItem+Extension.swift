//
//  UIBarButtonItem+Extension.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//   代理控制手势。    在navigationControlller中UIGestureRecognizerDelegate
// //  设置边缘手势代理
//self.interactivePopGestureRecognizer?.delegate = self
/*
 //  是否处理这次开始点击的手势
 func gestureRecognizerShouldBegin(_ gestureRecognizer: UIGestureRecognizer) -> Bool {
 //  如果是根视图控制器的话,不处理边缘手势
 if viewControllers.count == 1 {
 return false
 }
 
 return true
 }
 
 */
import UIKit

extension UIBarButtonItem{
    //接口如何维护？？？  如何设计！！！？？？
    convenience init(title: String) {
        
        self.init(title: title, target: AnyObject.self, imageName: "", action:#selector(test) );
    }
    @objc func test() ->  Void{
    }
    
    convenience init(title: String,target:Any, imageName:String? = nil,action: Selector) {
        self.init()
        
        let button = UIButton()
        
        button.addTarget(target, action: action, for: .touchUpInside)
        
        button.setTitle(title, for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        
        if imageName != nil {
            button.setImage(UIImage(named:imageName!), for: .normal)
        }
        
        button.sizeToFit()
        
        customView = button
    }
    
}

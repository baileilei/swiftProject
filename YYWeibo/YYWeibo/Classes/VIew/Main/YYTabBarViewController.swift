//
//  YYTabBarViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
//统一设置tabbar中的颜色
//        UITabBar.appearance().tintColor = UIColor.orange
        
        addChildViewController(childController: YYHomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(childController: YYDiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: YYMessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childController: YYProfileViewController(), title: "我的", imageName: "tabbar_profile")
    
    
    }
    

    func addChildViewController(childController: UIViewController,title:String,imageName:String) {
        childController.tabBarItem.image = UIImage(named: imageName)
        childController.tabBarItem.title = title;
        childController.tabBarItem.selectedImage = UIImage(named: "\(imageName)_selected")?.withRenderingMode(.alwaysOriginal)
        childController.tabBarItem.setTitleTextAttributes([kCTForegroundColorAttributeName as NSAttributedStringKey:UIColor.orange], for: .selected)
        childController.tabBarItem.setTitleTextAttributes([kCTFontAttributeName as NSAttributedStringKey:UIFont.systemFont(ofSize: 14)], for: .selected)
        
        let nav = UINavigationController(rootViewController: childController)
        
        addChildViewController(nav)
    }

}

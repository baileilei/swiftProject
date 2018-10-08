//
//  YYTabBarViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//   未登录视图应该放在父类中，像无数据的背景图片也是应该这么设计。

import UIKit

class YYTabBarViewController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
<<<<<<< HEAD

        view.backgroundColor = UIColor.purple
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
=======
//统一设置tabbar中的颜色
//        UITabBar.appearance().tintColor = UIColor.orange
        
        //如何对只读属性赋值  KVC------如果系统的属性是只读的，那你还能给这个属性赋值么？如果能，什么方法？？？
        let tabbar = YYTabBar()
        tabbar.composeBtnClosure = {[weak self]  in
            print("闭包过来的")
            
        }
        setValue(tabbar, forKey: "tabBar")
        
        
        addChildViewController(childController: YYHomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(childController: YYDiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(childController: YYMessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(childController: YYProfileViewController(), title: "我的", imageName: "tabbar_profile")
    
    
>>>>>>> c599edc8662251417b22ef96683df6a13d219c3c
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

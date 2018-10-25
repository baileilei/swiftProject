//
//  YYProfileViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYProfileViewController: YYVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        title = "我的"
        if isLogin {
            tabBarItem.title = "首页"
        } else {
            vistorView?.updateVisitorInfo(message: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人", imageName: "visitordiscover_image_profile")
        }

    }

  

}

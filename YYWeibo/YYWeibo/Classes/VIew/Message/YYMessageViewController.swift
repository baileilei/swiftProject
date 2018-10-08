//
//  YYMessageViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYMessageViewController: YYVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")//该逻辑抽到了父类
        
        if isLogin {
            
        } else {
            vistorView?.updateVisitorInfo(message: "登录后，你的微博、相册、个人资料会显示在这里，展示给别人", imageName: "visitordiscover_image_profile")
        }
    }

   

}

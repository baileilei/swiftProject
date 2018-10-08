//
//  YYDiscoverViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYDiscoverViewController: YYVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

//        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录")
//        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        
        
        if isLogin {
            navigationItem.titleView = YYSearchView.searchView()
            
        }else{
            vistorView?.updateVisitorInfo(message: "登录后，最新、最热微博尽在掌握，不再会与实事潮流擦肩而过", imageName: "visitordiscover_image_message")
        }
    }

   

}

//
//  YYHomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYHomeViewController: YYVistorTableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        if isLogin {
            navigationItem.leftBarButtonItem = UIBarButtonItem(title: "", target: self, imageName: "navigationbar_friendattention", action: #selector(swipe))
            navigationItem.rightBarButtonItem =  UIBarButtonItem(title: "", target: self, imageName: "navigationbar_pop", action: #selector(swipe))
//            tabBarItem.title = "首页"
            title = "首页"
            YYLog(message: childViewControllers)
        }else{
            vistorView?.updateVisitorInfo(message: nil, imageName: nil)
        }
        
    }
    
    @objc func swipe() {
        YYLog(message: "")
        let nav = UINavigationController(rootViewController: YYVistorTableViewController())
        present(nav, animated: false, completion: nil)
    }


}

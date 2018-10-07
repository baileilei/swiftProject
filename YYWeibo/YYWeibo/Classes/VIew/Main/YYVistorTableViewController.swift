//
//  YYVistorTableViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYVistorTableViewController: UITableViewController {

    var isLogin : Bool = false
    
    //自定义view视图------面试题：如何自定义控制器的view？
    override func loadView() {
        if isLogin{
            super.loadView()
        }else{
            let vistorView = UIView()
            vistorView.backgroundColor = UIColor.brown
            view = vistorView;
            setupnavUI()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    private func setupnavUI(){
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录", target: self, action: #selector(loginAction))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        
    }
    
   @objc  func loginAction() {
        print("点击了登录")
    }

}

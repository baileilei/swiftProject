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
        setupnavUI()
    }

    private func setupnavUI(){
        
        
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "登录")
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "注册")
        
    }
    

  

}

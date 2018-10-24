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
        }else{
            vistorView?.updateVisitorInfo(message: nil, imageName: nil)
        }
        
    }
    
    @objc func swipe() {
        YYLog(message: "")
    }


}

//
//  YYPresentationController.swift
//  YYWeibo
//
//  Created by g on 2018/10/27.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYPresentationController: UIPresentationController {
    override init(presentedViewController: UIViewController, presenting presentingViewController: UIViewController?) {
        super.init(presentedViewController: presentedViewController, presenting: presentingViewController)
    }
    
    override func containerViewWillLayoutSubviews() {
        presentedView?.frame = CGRect(x: 100, y: 55, width: 200, height: 200)
        
        containerView?.insertSubview(converButton, at: 0)
        
    }
    
    @objc private func converBtnClick(){
        presentedViewController.dismiss(animated: false, completion: nil)
    }
    
    
    
    private var converButton: UIButton {
        let but = UIButton()
        but.frame = UIScreen.main.bounds
        but.backgroundColor = UIColor.clear
        but.addTarget(self, action: #selector(converBtnClick), for:.touchUpInside)
        return but
        
    }
}

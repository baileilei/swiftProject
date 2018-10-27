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
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let titleBtn : YYTitleButton = YYTitleButton()
        titleBtn.setTitle("小马哥", for: .normal)
        titleBtn.sizeToFit()
        titleBtn.addTarget(self, action: #selector(titleBtnClick), for: .touchUpInside)
        navigationItem.titleView = titleBtn

    }
    
    @objc func titleBtnClick(btn: YYTitleButton){
        YYLog(message: "haha")
        btn.isSelected = !btn.isSelected
        
        let sb = UIStoryboard(name: "Popover", bundle: nil)
        guard let popVC = sb.instantiateInitialViewController() else {
            return
        }
        
        popVC.transitioningDelegate = self as! UIViewControllerTransitioningDelegate
        popVC.modalPresentationStyle = UIModalPresentationStyle.custom
        
        present(popVC, animated: false, completion: nil)
        
    }
    
    @objc func swipe() {
        YYLog(message: "")
    }


}

extension YYHomeViewController : UIViewControllerTransitioningDelegate{
    
//    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        <#code#>
//    }(<#parameters#>) -> <#return type#> {
//        <#function body#>
//    }
    func presentationController(forPresented presented: UIViewController, presenting: UIViewController?, source: UIViewController) -> UIPresentationController? {
//        return presentationController(forPresented:presenting:source:)
        return YYPresentationController(presentedViewController:presented , presenting: presenting)
    }
    
}

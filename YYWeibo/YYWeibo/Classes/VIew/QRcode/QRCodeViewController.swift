//
//  QRCodeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/27.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class QRCodeViewController: UIViewController {
    @IBOutlet weak var contentViewHeightCons: NSLayoutConstraint!
    
    @IBOutlet weak var scanView: UIImageView!
    @IBOutlet weak var scanlineTopCons: NSLayoutConstraint!
    @IBOutlet weak var customTabbar: UITabBar!
    override func viewDidLoad() {
        super.viewDidLoad()

        customTabbar.selectedItem = customTabbar.items?.first
        customTabbar.delegate = self
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        startAnimation()
    }
    
    private func startAnimation(){
        scanlineTopCons.constant = -300
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 1.0) {
            UIView.setAnimationRepeatCount(Float(CGFloat.greatestFiniteMagnitude))
            self.scanlineTopCons.constant = 300
            self.view.layoutIfNeeded()
        }
    }


    @IBAction func closeItemClick(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    @IBAction func photoItemClick(_ sender: Any) {
    }
}

extension QRCodeViewController : UITabBarDelegate {
    func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        contentViewHeightCons.constant = (item.tag == 1) ? 150 : 300;
        
//        view.removea
        scanView.layer.removeAllAnimations()
        
        startAnimation()
    }
    
}

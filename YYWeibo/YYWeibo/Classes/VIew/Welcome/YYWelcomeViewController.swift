//
//  YYWelcomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/13.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import SDWebImage

class YYWelcomeViewController: UIViewController {
    
    private lazy var bgImageView: UIImageView = UIImageView(image: UIImage(named: "ad_background"))
    
    private lazy var userImageView : UIImageView = {
        let view = UIImageView(image: UIImage(named: "avatar_default_big"))
        
        view.layer.cornerRadius = view.size.width/2
        view.layer.masksToBounds = true
//        view.size = CGSize(width: 85, height: 85)//留一个尾巴？？
        if let imageUrl = YYUserAccount.loadUserAccount()?.profile_image_url{
//            view.sd_setImage(with: imageUrl, placeholderImage: UIImage(named: "avatar_default_big"))
            view.sd_setImage(with: URL(string: imageUrl), placeholderImage: UIImage(named: "avatar_default_big"))
        }
        
        return view
    }()
    
    private var messagelabe: UILabel = {
        let label = UILabel()
        
        if let name = YYUserAccount.loadUserAccount()?.name{
            label.text = "欢迎回来， \(name)"
        }else{
            label.text = "welcome back"
        }
        label.font = UIFont.systemFont(ofSize: 13)
        label.textColor = UIColor.darkGray
        label.alpha = 0
        return label
    }()
    override func loadView() {
        view = bgImageView
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()

        setupUI()
    }
    
    private func setupUI(){
        view.addSubview(userImageView)
        view.addSubview(messagelabe)
        
        userImageView.snp_makeConstraints { (make) in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(200)
            make.size.equalTo(CGSize(width: 85, height: 85))//这个才有效！！！
        }
        
        messagelabe.snp_makeConstraints { (make) in
            make.centerX.equalTo(userImageView)
            make.top.equalTo(userImageView.snp_bottom).offset(10)
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        startAnimation()
    }
    
    // begin animation
    private func startAnimation(){
        userImageView.snp_updateConstraints { (make) in
            make.top.equalTo(view).offset(100)
        }
        
        //
        UIView.animate(withDuration: 1, delay: 0, usingSpringWithDamping: 0.7, initialSpringVelocity: 0, options: [], animations: {
            self.view.layoutIfNeeded()
        }) { (_) in
            UIView.animate(withDuration: 1, animations: {
                self.messagelabe.alpha = 1
            })
        }
    }

}

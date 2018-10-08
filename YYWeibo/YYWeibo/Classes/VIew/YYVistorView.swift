//
//  YYVistorView.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYVistorView: UIView {
    
    private lazy var cycleImageView : UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_smallicon"))
    
    private lazy var maskImageView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_mask_smallicon"))
    
     private lazy var iconImageView: UIImageView = UIImageView(image: UIImage(named: "visitordiscover_feed_image_house"))
    
    
    private lazy var messageLabel : UILabel = {
        let lable = UILabel()
        lable.text = "lkjdflkjasdflkjalkjdflkjasdflkjasdlflkjdflkjasdflkjasdlflkjdflkjasdflkjasdlfsdlf"
        lable.textColor = UIColor.darkGray
        lable.numberOfLines = 0
        lable.font = UIFont.systemFont(ofSize: 12)
        lable.sizeToFit()
        return lable;
    }()
    
    private lazy var loginButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("登录", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setBackgroundImage(UIImage(named: "common_button_white_disable"), for: .normal)
        button.adjustsImageWhenHighlighted = false//去掉点击的背景高亮效果
        return button
    }()
    
    private lazy var regesterButton : UIButton = {
        let button = UIButton()
        
        button.setTitle("注册", for: .normal)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        button.setTitleColor(UIColor.orange, for: .highlighted)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setBackgroundImage(UIImage(named: "common_button_white_disable"), for: .normal)
        button.adjustsImageWhenHighlighted = false//去掉点击的背景高亮效果
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        backgroundColor = UIColor(white: 237/255, alpha: 1)
        
        addSubview(cycleImageView)
        addSubview(maskImageView)
        addSubview(iconImageView)
        addSubview(messageLabel)
        addSubview(loginButton)
        addSubview(regesterButton)
        
        cycleImageView.translatesAutoresizingMaskIntoConstraints = false
        
        cycleImageView.snp_makeConstraints { (maker) in
//            maker.center.x = center
            maker.center.equalTo(self)
        }
        
        maskImageView.snp_makeConstraints { (make) in
            make.center.equalTo(cycleImageView)
        }
        
        iconImageView.snp_makeConstraints { (make) in
            make.center.equalTo(cycleImageView)
        }
        
        messageLabel.snp_makeConstraints { (make) in
            make.centerX.equalTo(cycleImageView)
            make.top.equalTo(cycleImageView.snp_bottom)
            make.width.equalTo(224)
        }
        
        loginButton.snp_makeConstraints { (make) in
            make.left.equalTo(cycleImageView)
            make.top.equalTo(messageLabel.snp_bottom)
            make.size.equalTo(CGSize(width: 80, height: 35))
        }
        
        regesterButton.snp_makeConstraints { (make) in
            make.top.equalTo(loginButton)
            make.right.equalTo(cycleImageView)
            make.size.equalTo(loginButton)
        }
        
    }
    
    func updateVisitorInfo(message:String?, imageName:String?) {
        if let msg = message, let imgName = imageName {
            messageLabel.text = msg
            iconImageView.image = UIImage(named: imgName)
            cycleImageView.isHidden = true
        }else{
            startAnimation()
        }
    }
    
    func startAnimation() -> Void {
        let animation = CABasicAnimation(keyPath: "transform.rotation")
        animation.toValue = 2 * M_PI
        animation.repeatCount = 10000.0
        animation.duration = 20
        animation.isRemovedOnCompletion = false
        cycleImageView.layer.add(animation, forKey: nil)//图层上的动画
        
    }
}

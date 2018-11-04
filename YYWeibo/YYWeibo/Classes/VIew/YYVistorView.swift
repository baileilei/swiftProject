//
//  YYVistorView.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//    代理和block一般用父子关系的场景       通知一般用于跨层的传递。层级结构较深的场景。

import UIKit

class YYVistorView: UIView {
    
    class func getYYVisitorView()->YYVistorView{
    
        return Bundle.main.loadNibNamed("YYVistorView", owner: nil, options: nil)?.last as! YYVistorView
    
    }
    
    var loginClosure: (()->())?
    
    
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
        button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
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
        button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        return button
    }()
    

    
    class func shareVistorView() -> YYVistorView? {
        return Bundle.main.loadNibNamed("YYVistorView", owner: nil, options: [:])?.last as? YYVistorView
    }
    
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
            make.top.equalTo(messageLabel.snp_bottom).offset(10)
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
        animation.toValue = 2 * Double.pi
        animation.repeatCount = 10000.0
        animation.duration = 20
        //默认情况下只要视图消失(调用viewDidDisappear方法之后)，系统就会自动移除动画
        animation.isRemovedOnCompletion = false
        cycleImageView.layer.add(animation, forKey: nil)//图层上的动画
        
    }
//    @IBOutlet weak var loginAction: UIButton!
//    @IBAction func loginAction(_ sender: Any) {
//    }
    
    @IBAction func logicClickAction(_ sender: Any) {
        YYLog(message: "it is difference")
    }
    @IBOutlet weak var loginbtnClick: UIButton!
    @objc func loginAction(){
        loginClosure?()
    }
}

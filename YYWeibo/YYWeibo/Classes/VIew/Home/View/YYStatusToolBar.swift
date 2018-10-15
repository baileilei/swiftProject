//
//  YYStatusToolBar.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStatusToolBar: UIView {
    
    var statusVM : YYStatusVM?{
        didSet{//给view绑定model
            retweetButton.setTitle(statusVM?.retweetCountContetn, for: .normal)
            commontButton.setTitle(statusVM?.commentCountContent, for: .normal)
            unlikeButton.setTitle(statusVM?.unlikeCountContent, for: .normal)
        }
    }
    
    private lazy var retweetButton: UIButton =  addChildBuuton(imageName: "timeline_icon_retweet", title: "转发")
    private lazy var commontButton: UIButton = addChildBuuton(imageName: "timeline_icon_comment", title: "评论")
    private lazy var unlikeButton: UIButton = addChildBuuton(imageName: "timeline_icon_unlike", title: "赞")
    
    

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    private func setupUI(){
       
        retweetButton.snp_makeConstraints { (make) in
            make.leading.equalTo(self)
            make.top.equalTo(self)
            make.bottom.equalTo(self)
            make.width.equalTo(commontButton)
        }
        
        commontButton.snp_makeConstraints { (make) in
            make.top.equalTo(self)
            make.leading.equalTo(retweetButton.snp_trailing)
            make.bottom.equalTo(self)
            make.width.equalTo(unlikeButton)
        }
        
        unlikeButton.snp_makeConstraints { (make) in
            make.trailing.equalTo(self)
            make.top.bottom.equalTo(self)
            make.leading.equalTo(commontButton.snp_trailing)
        }
        
        let firstLine = addChildLineView()
        let sencondLine = addChildLineView()
        
        firstLine.snp_makeConstraints { (make) in
            make.centerX.equalTo(retweetButton.snp_trailing)
            make.centerY.equalTo(self)
        }
        
        sencondLine.snp_makeConstraints { (make) in
            make.centerY.equalTo(self)
            make.centerX.equalTo(commontButton.snp_trailing)
        }
    }
    
    
    private func addChildBuuton(imageName:String,title:String)-> UIButton {
        let button = UIButton()
        button.setImage(UIImage(named: imageName), for: .normal)
        button.setTitle(title, for: .normal)
        button.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        button.setTitleColor(UIColor.darkGray, for: .normal)
        addSubview(button)
        return button
    }

    
    private func addChildLineView()->UIImageView{
        let lineVIew: UIImageView = UIImageView(image: UIImage(named: "timeline_card_bottom_line"))
        addSubview(lineVIew)
        return lineVIew
    }
}

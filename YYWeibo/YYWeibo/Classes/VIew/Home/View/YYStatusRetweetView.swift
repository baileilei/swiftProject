//
//  YYStatusRetweetView.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStatusRetweetView: UIView {
    
    var retweetViewBottomConstraint: Constraint?
    
    
    var statusVM : YYStatusVM? {
        didSet{
//            contentLabel.text = statusVM?.status?.retweeted_status?.text
            contentLabel.text = statusVM?.retweetContent
           
//                                statusVM?.status?.pic_urls
            retweetViewBottomConstraint?.uninstall()
            if let cot = statusVM?.status?.retweeted_status?.pic_urls?.count,  cot > 0 {
                
                pictureView.isHidden = false
                self.snp_updateConstraints { (make) in
                    retweetViewBottomConstraint = make.bottom.equalTo(pictureView).offset(10).constraint
                     pictureView.picUrls = statusVM?.status?.retweeted_status?.pic_urls
                }
            }else{
                pictureView.isHidden = true
                self.snp_updateConstraints { (make) in
                    retweetViewBottomConstraint = make.bottom.equalTo(contentLabel).offset(10).constraint
                }
            }
        }
    }
    

    private lazy var contentLabel: UILabel = {
        let label = UILabel(textColor: UIColor.lightGray, fontSize: 14, isMultiNumbers: 0)
        label.text = "slfjaskfjlasfsdfsadfhaha"
        return label
    }()
    
    private lazy var pictureView:YYStatusPictureView = {
        let view = YYStatusPictureView()
        
        
        
        return view
        
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        addSubview(contentLabel)
        addSubview(pictureView)
        
        contentLabel.snp_makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(10)
            make.width.equalTo(ScreenWidth - 2 * YYHomeCellMargin)
        }
        
        pictureView.snp_makeConstraints { (make) in
            make.leading.equalTo(contentLabel)
            make.top.equalTo(contentLabel.snp_bottom).offset(10)
//            make.size.equalTo(CGSize(width: 100, height: 100))
        }
        
        //关键约束---当前视图的底部约束！  当前视图的高度始终是最后一个控件决定的
        self.snp_makeConstraints { (make) in
            retweetViewBottomConstraint = make.bottom.equalTo(pictureView).offset(10).constraint
        }
    }
    
}

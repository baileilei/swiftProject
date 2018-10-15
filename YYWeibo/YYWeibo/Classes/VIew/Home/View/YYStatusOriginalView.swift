//
//  YYStatusOriginalView.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import SDWebImage

let YYHomeCellMargin : CGFloat = 10
let ScreenWidth = UIScreen.main.bounds.size.width



class YYStatusOriginalView: UIView {
    
    var statusVM:YYStatusVM? {
        didSet{//如何绑定？
            screenNameLabel.text = statusVM?.status?.user?.screen_name
            if let userImageUrl = statusVM?.status?.user?.profile_image_url {
//                userIamgeView.setImageWith(URL(string: userImageUrl)!)
//                userIamgeView.setImageWith(URL(string: userImageUrl)!, placeholderImage: UIImage(named: "avatar_default_big"))//可用来测试流量耗费情况
                userIamgeView.sd_setImage(with: URL(string: userImageUrl), placeholderImage: UIImage(named: "avatar_default_big"), options: SDWebImageOptions(rawValue: 0), completed: nil)
//                userIamgeView.sd_setImage(with: <#T##URL?#>, placeholderImage: <#T##UIImage?#>, options: <#T##SDWebImageOptions#>, progress: <#T##SDWebImageDownloaderProgressBlock?##SDWebImageDownloaderProgressBlock?##(Int, Int, URL?) -> Void#>, completed: <#T##SDExternalCompletionBlock?##SDExternalCompletionBlock?##(UIImage?, Error?, SDImageCacheType, URL?) -> Void#>)
                timeLabel.text = statusVM?.status?.created_at
                sourceLabel.text = statusVM?.status?.source
                contentLabel.text = statusVM?.status?.text
                mbrankImageView.image = statusVM?.mbrankImage
            }
        }
    }
    

    private lazy var userIamgeView:UIImageView = UIImageView(image: (UIImage(named: "avatar_default_big")))
    private lazy var verifiedTypeImageView : UIImageView = UIImageView(image: UIImage(named: "avatar_vip"))
    
    private lazy var screenNameLabel : UILabel = {
        let label = UILabel(textColor: UIColor.darkGray, fontSize: 14, isMultiNumbers: 1)
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = UIColor.darkGray
        label.text = "小逗比 神吐槽，不要太敏感哦"
        return label
    }()
    
    private lazy var mbrankImageView : UIImageView = UIImageView(image: UIImage(named: "common_icon_membership"))
    
    private lazy var timeLabel : UILabel = {
        let label = UILabel(textColor: UIColor.darkGray, fontSize: 14,isMultiNumbers:1)
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = UIColor.darkGray
        return label
    }()
    
    private lazy var sourceLabel : UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = UIColor.darkGray
        label.text = "来自星星的你"
        return label
    }()
    
    private lazy var contentLabel : UILabel = {
        let label = UILabel(textColor: UIColor.darkGray, fontSize: 14, isMultiNumbers: 0)
//        label.font = UIFont.systemFont(ofSize: 14)
//        label.textColor = UIColor.darkGray
        label.text = "来自星星的你,asdlfkjsalkdf来自星星的你,asdlfkjsalkdf来自星星的你,asdlfkjsalkdf来自星星的你,asdlfkjsalkdfj"
//        label.numberOfLines = 0
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        addSubview(userIamgeView)
        addSubview(verifiedTypeImageView)
        addSubview(screenNameLabel)
        addSubview(mbrankImageView)
        addSubview(timeLabel)
        addSubview(sourceLabel)
        addSubview(contentLabel)
        
        userIamgeView.snp_makeConstraints { (make) in//函数式编程思想！
            make.top.equalTo(self).offset(YYHomeCellMargin)
            make.leading.equalTo(self).offset(YYHomeCellMargin)
            make.size.equalTo(CGSize(width: 35, height: 35))
        }
        
        verifiedTypeImageView.snp_makeConstraints { (make) in
            make.centerX.equalTo(userIamgeView.snp_right)
            make.centerY.equalTo(userIamgeView.snp_bottom)
        }
        
        screenNameLabel.snp_makeConstraints { (make) in
            make.top.equalTo(userIamgeView)
            make.leading.equalTo(userIamgeView.snp_trailing).offset(10)
        }
        
        mbrankImageView.snp_makeConstraints { (make) in
            make.top.equalTo(screenNameLabel)
            make.leading.equalTo(screenNameLabel.snp_trailing).offset(10)
        }
        
        timeLabel.snp_makeConstraints { (make) in
            make.leading.equalTo(userIamgeView.snp_trailing).offset(10)
            make.bottom.equalTo(userIamgeView)
        }
        
        sourceLabel.snp_makeConstraints { (make) in
            make.leading.equalTo(timeLabel.snp_trailing).offset(10)
            make.bottom.equalTo(userIamgeView)
        }
        
        contentLabel.snp_makeConstraints { (make) in
            make.top.equalTo(userIamgeView.snp_bottom).offset(10)
            make.leading.equalTo(userIamgeView)
            make.width.equalTo(ScreenWidth - 2 * YYHomeCellMargin)
        }
        
        
        //关键约束-----给原创微博View的。  即originalView
        self.snp_makeConstraints { (make) in
            make.bottom.equalTo(contentLabel).offset(10)
        }
    }
    

}

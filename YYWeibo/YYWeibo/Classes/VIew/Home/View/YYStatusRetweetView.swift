//
//  YYStatusRetweetView.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStatusRetweetView: UIView {

    private lazy var contentLabel: UILabel = {
        let label = UILabel(textColor: UIColor.lightGray, fontSize: 14, isMultiNumbers: 0)
        label.text = "slfjaskfjlasfsdfsadfhaha"
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
        addSubview(contentLabel)
        
        contentLabel.snp_makeConstraints { (make) in
            make.top.equalTo(self).offset(10)
            make.leading.equalTo(self).offset(10)
            make.width.equalTo(ScreenWidth - 2 * YYHomeCellMargin)
        }
        
        //关键约束---当前视图的底部约束！  当前视图的高度始终是最后一个控件决定的
        self.snp_makeConstraints { (make) in
            make.bottom.equalTo(contentLabel).offset(10)
        }
    }
    
}

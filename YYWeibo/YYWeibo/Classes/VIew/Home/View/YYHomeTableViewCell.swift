//
//  YYHomeTableViewCell.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
//三大块-----其实就是分层   封装
class YYHomeTableViewCell: UITableViewCell {
    
    var statusVM: YYStatusVM?{
        didSet{
            originalView.statusVM = statusVM
        }
        
    }
    
    
    private lazy var originalView:YYStatusOriginalView = {
        let view = YYStatusOriginalView()
        view.backgroundColor = RandomColor()
        
        return view
        
    }()

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        contentView.addSubview(originalView)
        
        originalView.snp_makeConstraints { (make) in
            make.top.equalTo(contentView)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
//            make.bottom.equalTo(contentView)
        }
    }
    
}

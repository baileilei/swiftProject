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
    
    var toolBarTopConstraint: Constraint?
    
    var statusVM: YYStatusVM?{
        didSet{
            originalView.statusVM = statusVM
            toolBar.statusVM = statusVM
            if statusVM?.retweetContent != nil{
                retweentView.statusVM = statusVM
                toolBarTopConstraint?.uninstall()
                toolBar.snp_updateConstraints { (make) in
                    toolBarTopConstraint = make.top.equalTo(retweentView.snp_bottom).constraint
                }
            }else{
                retweentView.isHidden = true
                toolBarTopConstraint?.uninstall()
                toolBar.snp_updateConstraints { (make) in
                    toolBarTopConstraint = make.top.equalTo(originalView.snp_bottom).constraint
                }
            }
            
        }
        
    }
    
    
    private lazy var originalView:YYStatusOriginalView = {
        let view = YYStatusOriginalView()
        view.backgroundColor = RandomColor()
        
        return view
        
    }()
    
    private lazy var toolBar: YYStatusToolBar = {
        let view = YYStatusToolBar()
        view.backgroundColor = RandomColor()
        
        return view
        
    }()
    
    private lazy var retweentView: YYStatusRetweetView = {
        let view = YYStatusRetweetView()
        
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
        contentView.addSubview(retweentView)
        contentView.addSubview(toolBar)
        
        originalView.snp_makeConstraints { (make) in
            make.top.equalTo(contentView)
            make.leading.equalTo(contentView)
            make.trailing.equalTo(contentView)
//            make.bottom.equalTo(contentView)
        }
        
        retweentView.snp_makeConstraints { (make) in
            make.top.equalTo(originalView.snp_bottom)
            make.leading.equalTo(originalView)
            make.trailing.equalTo(originalView)
            
        }
        
        
        
        toolBar.snp_makeConstraints { (make) in
            toolBarTopConstraint = make.top.equalTo(retweentView.snp_bottom).constraint
            make.leading.equalTo(retweentView)
            make.trailing.equalTo(retweentView)
            make.height.equalTo(35)
            
            //关键约束  -----最后一个控件的底部   给cell的
            make.bottom.equalTo(contentView.snp_bottom)
        }
        
//        contentView.snp_makeConstraints { (make) in
//            make.bottom.equalTo(toolBar)
//            
//        }
    }
    
}

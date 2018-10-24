//
//  YYTitleButton.swift
//  YYWeibo
//
//  Created by g on 2018/10/24.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYTitleButton: UIButton {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        //设置按钮的图片
        setImage(UIImage(named: ""), for: .normal)
        setImage(UIImage(named: ""), for: .selected)
        setBackgroundImage(UIImage(named: ""), for: .normal)
        setBackgroundImage(UIImage(named: ""), for: .selected)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //关于空格在自定义类中的处理
    override func setTitle(_ title: String?, for state: UIControlState) {
        super.setTitle(title ?? "" + "  ", for: state)
    }

    override func layoutSubviews() {
        super.layoutSubviews()
        
//        titleLabel?.frame.offsetBy(dx: -((imageView?.width)!), dy: 0)
//        imageView?.frame.offsetBy(dx: (titleLabel?.width)!, dy: 0)
        
        titleLabel?.x = 0
        imageView?.x = (titleLabel?.width)!
    }

}

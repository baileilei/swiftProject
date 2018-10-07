//
//  YYTabBar.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYTabBar: UITabBar {
    
    private lazy var composeBUtton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "tabbar_compose_icon_add"), for: .normal)
        button.setImage(UIImage(named: "tabbar_compose_icon_add_highlighted"), for: .highlighted)
        
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button"), for: .normal)
        button.setBackgroundImage(UIImage(named: "tabbar_compose_button_highlighted"), for: .highlighted)
        
        button.sizeToFit()
        return button;
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private func setupUI(){
        
        addSubview(composeBUtton)
    }
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        composeBUtton.center.x = frame.size.width/2
        composeBUtton.center.y = frame.size.height/2
//        composeBUtton.center = center//无效！！ 为啥？
        
        //如何在for循环中添加遍历次数的索引？？？
        var index = 0
        
        let itemWidth = frame.size.width / 5;
        for value in subviews{//UITabBarButton是一个系统私有类，不能直接使用
            if value .isKind(of:NSClassFromString("UITabBarButton")! ){
//                print(value)
                value.frame.size.width = itemWidth
                
                //设置系统按钮的x坐标
                value.frame.origin.x = itemWidth * CGFloat(index)
                index += 1
                
                if index == 2{
                    index += 1
                }
            }
        }
    }
    

}

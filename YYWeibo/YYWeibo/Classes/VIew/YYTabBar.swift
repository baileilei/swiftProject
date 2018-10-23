//
//  YYTabBar.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYTabBar: UITabBar {
    
    var composeBtnClosure : (()->())?//参数 返回值
    private lazy var composeBUtton: UIButton = {
        let button = UIButton()
        
        button.addTarget(self, action: #selector(buttonClick), for: .touchUpInside)
        
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
    
    /*
     public: 最大权限，可以在当前framework和其他framework中访问
     internal：默认的权限，可以在当前framework中随意访问
     private: 私有权限 ， 只能在当前文件中访问
     
     在企业开发中，建议严格的控制权限，不想让别人访问的东西一定要private
     */
    //如果在按钮的监听方法加上private就会报错，报错原因是因为监听事件是由运行循环触发的，而如果该方法是私有的只能在当前类中访问 -------------------------在OC方法前加private进行测试！！！！！！可以测试private的权限控制
    //而相同的情况在OC中是没有问题，因为OC是动态派发的
    //而Swift不一样，Swift中所有的东西都是编译时确定的
    //如果想让swift中的方法也支持动态派发，可以在方法前面加上@objc，
    //加上@objc就代表告诉系统需要动态派发
     @objc  func buttonClick() {
        print("yy-block")
        composeBtnClosure?()
    }
    

}

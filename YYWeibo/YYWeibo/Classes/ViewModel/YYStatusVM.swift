//
//  YYStatusCellVM.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
// VM只是抽取的一层，适用于view层控件比较多，相对应的model中的逻辑，常见的是弱逻辑比较多，从而进行抽取。对应复杂Cell
//再一种场景就是网络请求的抽取  一堆对应于VC中

import UIKit

class YYStatusVM: NSObject {
    var status: YYStatus?
    
    init(status:YYStatus) {
        super.init()
        self.status = status
        
        handleMBrankImage(mbrank: status.user?.mbrank ?? 0)
        retweetCountContetn = handleCountContent(count: status.reposts_count, defaultTitle: "转发")
        commentCountContent = handleCountContent(count: status.comments_count, defaultTitle: "评论")
        unlikeCountContent = handleCountContent(count: status.attitudes_count, defaultTitle: "赞")
    }
    
    var mbrankImage: UIImage?
    var retweetCountContetn:String?
    var commentCountContent:String?
    var unlikeCountContent:String?
    
    
    
    
    private func handleCountContent(count:Int, defaultTitle:String)-> String{
        if count > 0{
            return "\(count)"
        }else{
            return defaultTitle
            
        }
        
        
    }
    
    private func handleMBrankImage(mbrank:Int){
        if mbrank >= 1 && mbrank <= 6{
            mbrankImage = UIImage(named: "common_icon_membership_level\(mbrank)")
        }
    }
    
}

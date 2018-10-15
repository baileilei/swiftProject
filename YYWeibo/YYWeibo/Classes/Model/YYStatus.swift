//
//  YYStatus.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStatus: NSObject {
    @objc var created_at:String?
    @objc var id:Int64 = 0
    
    @objc var text:String?
    @objc var source:String?
    
    
    @objc var user: YYUser?
    
    @objc var reposts_count: Int = 0
    @objc var comments_count:Int = 0
    @objc var attitudes_count:Int = 0
    
    
    
    
    
    
}

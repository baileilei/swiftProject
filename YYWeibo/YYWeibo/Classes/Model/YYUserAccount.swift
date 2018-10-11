//
//  YYUserAccount.swift
//  YYWeibo
//
//  Created by g on 2018/10/10.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYUserAccount: NSObject {
    var access_token : String?
    var expires_in : TimeInterval = 0{
        didSet{
            expireDate = Date().addingTimeInterval(expires_in)
            
        }
        
    }
    var uid: Int64 = 0
    
    var expireDate:Date?
    
    func coparedExpire(expireDate:Date?) -> Bool {//没过期
        if expireDate?.compare(Date()) == .orderedDescending{
            return false
        }else{//过期
            return true
        }
    }
    
    
    var name:String?
    var profile_image_url:String?
    
//    "access_token" = "2.00vO9gNDM1t4HE7abd662228yfbOaD";
//    "expires_in" = 157679999;
//    isRealName = true;
//    "remind_in" = 157679999;
//    uid = 2950609197;
//})
    
    init(dict:[String:Any]) {
        super.init()
        setValuesForKeys(dict)
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

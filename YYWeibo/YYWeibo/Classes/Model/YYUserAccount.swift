//
//  YYUserAccount.swift
//  YYWeibo
//
//  Created by g on 2018/10/10.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

private   let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last as! NSString).appendingPathComponent("userAccount.archiver")

class YYUserAccount: NSObject,NSCoding {
    func encode(with aCoder: NSCoder) {
        aCoder.encode(access_token, forKey: "access_token")
         aCoder.encode(expireDate, forKey: "expireDate")
        aCoder.encode(uid, forKey: "uid")
        aCoder.encode(name, forKey: "name")
        aCoder.encode(profile_image_url, forKey: "profile_image_url")
    }
    
    required init?(coder aDecoder: NSCoder) {
        access_token = aDecoder.decodeObject(forKey: "access_token") as! String
        expireDate = aDecoder.decodeObject(forKey: "expireDate") as? Date
        uid = aDecoder.decodeInt64(forKey: "uid")
        name = aDecoder.decodeObject(forKey: "name") as? String
//        profile_image_url = aDecoder.decodeObject(forKey: "profile_image_url") as! String
    }
    
    func saveUserAccount() -> Void {
//        let path = (NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).last as! NSString).appendingPathComponent("userAccount.archiver")
        NSKeyedArchiver.archiveRootObject(self, toFile: path)
    }
    
    class func loadUserAccount() -> YYUserAccount? {//从沙盒里读取出来的东西必然是可选类型
        return NSKeyedUnarchiver.unarchiveObject(withFile: path) as? YYUserAccount
    }
    
    var access_token : String?
    var expires_in : TimeInterval = 0{
        didSet{
            expireDate = Date().addingTimeInterval(1000)
            
        }
        
    }
    var uid: Int64 = 0
    
    var expireDate:Date?
//    { set方法？
////        if self.expireDate == nil {
////            return Date()
////        }
//    }
    
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
        access_token = dict["access_token"] as? String
        var uidStr = dict["uid"] as? String
        uid = Int64(uidStr!) ?? 0

//        var expires_inStr = dict["expires_in"] as? String
//        expires_in = TimeInterval(expires_inStr!) ?? 0
    }
    
    override func setValue(_ value: Any?, forUndefinedKey key: String) {
        
    }
}

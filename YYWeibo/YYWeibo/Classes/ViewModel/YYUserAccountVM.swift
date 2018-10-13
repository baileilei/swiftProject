//
//  YYUserAccountVM.swift
//  YYWeibo
//
//  Created by g on 2018/10/13.
//  Copyright © 2018 g. All rights reserved.
//灵活性 与 多变性

import UIKit
import SVProgressHUD

class YYUserAccountVM: NSObject {
    static let shareUserAccountVM : YYUserAccountVM = YYUserAccountVM()
    
    var isLogin: Bool {
        return accessToken != nil
    }
    
    
    var accessToken :String?{
        
        let token = YYUserAccount.loadUserAccount()?.access_token
        
        let expiresDate = YYUserAccount.loadUserAccount()?.expireDate
        
        if let t = token {//, (expiresDate != nil)  用compare方法必要判空
//            if expiresDate?.compare(Date()) == .orderedAscending{//临时处理
                return t
//            }else{
//                return nil
//            }
        }else{
            return nil
        }
    }
    
    
    
    func requestAccessToken(code:String,successBlock:@escaping (Bool)->()){
        print(code)
        YYNetworkTools.shareTools.requestAccessToken(code: code) { (response, error) in
            print(response)
            if error != nil{
                SVProgressHUD.show(withStatus: "网络有问题")
                successBlock(false)
                return
            }
            
            guard let dic = response as? [String:Any] else{
                successBlock(false)
                return
            }
            
            let userAccount = YYUserAccount(dict: dic)
            print(userAccount.access_token)
            
            self.requestUserInfo(userAccount: userAccount,successBlock: successBlock)
            //为什么不对？ block换个名称是否可行？
            //            YYNetworkTools.shareTools.requestUserInfo(accessToken: userAccount.access_token!, uid: userAccount.uid, callBacks: { (reponse, error) in
            //                if error != nil{
            //                    SVProgressHUD.show(withStatus: "wangluocuo")
            //                    return
            //                }
            //
            //                guard let dic = response as? [String: Any] else{
            //                    return
            //                }
            //
            //                print(dic)
            //
            //                userAccount.name = dic["name"] as? String
            //                userAccount.profile_image_url = dic["profile_image_url"] as? String
            //                //归档 解档  对照项目看看   至少研究一天！！！、// 数据持久化。
            //
            //                userAccount.saveUserAccount()//归档
            //            })
        }
    }
    
    //      根据accesskon和用户id获取用户信息
    private func requestUserInfo(userAccount: YYUserAccount,successBlock:@escaping (Bool)->()) -> Void {
        
        YYNetworkTools.shareTools.requestUserInfo(accessToken: userAccount.access_token!, uid: userAccount.uid) { (response, error) in
            
            if error != nil {
                print("网络请求异常: \(error)")
                successBlock(false)
                return
            }
            
            //  代码执行到此网络请求成功
            guard let dic = response as? [String: Any] else {
                print("你不是一个正确的字典")
                successBlock(false)
                return
            }
            
            let name = dic["name"]
            let profile_image_url = dic["profile_image_url"]
            
            
            userAccount.name = name as? String
            userAccount.profile_image_url = profile_image_url as? String
            
            
            print(userAccount.name)
            
            //  代码执行到此,表示用户登录成功
            userAccount.saveUserAccount()
            successBlock(true)
            
        }
        
        
        
    }
}

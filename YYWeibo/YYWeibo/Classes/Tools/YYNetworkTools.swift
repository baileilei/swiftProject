//
//  YYNetworkTools.swift
//  YYWeibo
//
//  Created by g on 2018/10/9.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import AFNetworking

enum RequestType: Int {
    case GET
    case POST
}

class YYNetworkTools: AFHTTPSessionManager {
    static let shareTools : YYNetworkTools = {
        let tools = YYNetworkTools()
        tools.responseSerializer.acceptableContentTypes?.insert("text/html")
        tools.responseSerializer.acceptableContentTypes?.insert("text/plain")
        return tools
    }()
    
    fileprivate func request(type:RequestType, url:String, params:Any?, callBack:@escaping(Any?,Error?)->()){
        if type == .GET {
            get(url, parameters: params, progress: nil, success: { (_, response) in
                callBack(response,nil)
            }) { (_, error) in
                callBack(nil,error)
            }
        }else{
            
            post(url, parameters: params, progress: nil, success: { (_, response) in
                callBack(response,nil)
            }) { (_, error) in
                callBack(nil,error)
            }
        }
    }
}


extension YYNetworkTools{
    
    //通过access_token 获取用户信息
    func requestUserInfo(accessToken:String, uid:Int64,callBack:@escaping (Any?,Error?)->()) -> Void {
        let url = "https://api.weibo.com/2/users/show.json"
        let params :[String :Any] = [
            "access_token": accessToken,
            "uid": uid
        ]
        
        request(type: .GET, url: url, params: params, callBack: callBack)
        
        
    }
    
    
    func requestAccessToken(code:String, callBack:@escaping (Any?,Error?)->()){
        //  请求接口地址
        let url = "https://api.weibo.com/oauth2/access_token"
        //  准备请求需要的参数
        let params = [
            "client_id": weiBoAppKey,
            "client_secret": weiBoAppSecret,
            "grant_type": "authorization_code",
            "code": code,
            "redirect_uri": weiBoRedirect_Uri
            
        ]
        request(type: .POST, url: url, params: params, callBack: callBack)
    }
    
    
}

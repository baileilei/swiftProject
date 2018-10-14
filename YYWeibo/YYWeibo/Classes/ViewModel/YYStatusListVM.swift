//
//  YYStatusListVM.swift
//  YYWeibo
//
//  Created by g on 2018/10/14.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStatusListVM: NSObject {
    
    lazy var statusList : [YYStatusVM] = [YYStatusVM]()
    
    //load home data
     func loadData(callBack:@escaping(Bool)->()) {
        let accessToken = YYUserAccount.loadUserAccount()?.access_token
        YYNetworkTools.shareTools.requestStatuses(accessToken: accessToken!) { (reponse, error) in
            if error != nil{
                callBack(false)
                return
            }
            
            guard let dict : [String:Any] = reponse as? [String:Any] else{
                 callBack(false)
                return
            }
            
            
            guard let statusArray = dict["statuses"] as? [[String:Any]] else{
                 callBack(false)
                return
            }
            
            let statusArr = NSArray.yy_modelArray(with: YYStatus.self, json: statusArray) as! [YYStatus]
            
            var tempArray = [YYStatusVM]()
            
            for status in statusArr{
                let VM = YYStatusVM(status: status)
                tempArray.append(VM)
            }
            self.statusList = tempArray
            
//            self.statusList = statusArr
             callBack(true)
            
//            self.tableView.reloadData()
            
        }
        
    }
    
}




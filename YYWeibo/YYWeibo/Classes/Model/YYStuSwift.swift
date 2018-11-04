//
//  YYStuSwift.swift
//  YYWeibo
//
//  Created by g on 2018/11/4.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYStuSwift: NSObject {
    var name :String?
    var age : Int = -1
    
    func insertStu(){
        let insertSQL = "INSERT INTO t_student (name,age) VALUES (?,?);"
        SqliteManagerWithFMDB.shareInstance.dbQueue?.inDatabase({ (db) in
            if ((try? db?.executeUpdate(insertSQL, values: ["why",18])) != nil){
                YYLog(message: "插入数据成功")
            }
        })
    }
}

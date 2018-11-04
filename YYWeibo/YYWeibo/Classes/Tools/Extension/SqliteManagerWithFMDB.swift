//
//  SqliteManagerWithFMDB.swift
//  YYWeibo
//
//  Created by g on 2018/11/4.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class SqliteManagerWithFMDB: NSObject {
    static let shareInstance : SqliteManagerWithFMDB = SqliteManagerWithFMDB()
    
    var dbQueue :FMDatabaseQueue?//内自动有一个db
    
    
    func openDB(dbName:String) {
        let path : NSString = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true).first as! NSString
        
        /*
        let filePath = path.strings(byAppendingPaths: [path as String])
        
        YYLog(message: filePath)//["/Users/g/Library/Developer/CoreSimulator/Devices/4572D90F-4D1D-4447-A2DD-7154EC098B95/data/Containers/Data/Application/7ECC636A-9F06-4323-86F1-BEB9A9EBC6F4/Documents/Users/g/Library/Developer/CoreSimulator/Devices/4572D90F-4D1D-4447-A2DD-7154EC098B95/data/Containers/Data/Application/7ECC636A-9F06-4323-86F1-BEB9A9EBC6F4/Documents"] 两次 没有拼接1213
        */
        let filePath2 = path.strings(byAppendingPaths: ["/" + dbName])
        //
        YYLog(message: filePath2)//["/Users/g/Library/Developer/CoreSimulator/Devices/4572D90F-4D1D-4447-A2DD-7154EC098B95/data/Containers/Data/Application/CBA5E257-B803-42C7-B4E9-2BD1BD59A3C9/Documents/123"
        
        let filePath23 = path.strings(byAppendingPaths: [dbName])
        YYLog(message: filePath23)//["/Users/g/Library/Developer/CoreSimulator/Devices/4572D90F-4D1D-4447-A2DD-7154EC098B95/data/Containers/Data/Application/98176BFF-AFC2-4B83-B4C4-E636A9A82477/Documents/123"]

        dbQueue = FMDatabaseQueue(path: filePath23.first)
        
        createTable()
    }
    
    private func createTable(){
        let createTableSQL = "CREATE TABLE IF NOT EXISTS 't_student' ('id' INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,'name' text,'age' integer,'height' real);"
        
        dbQueue?.inDatabase({ (db) in
            if ((try? db?.executeUpdate(createTableSQL, values: nil)) != nil){
                YYLog(message: "创标成功")
            }
        })
    }
}

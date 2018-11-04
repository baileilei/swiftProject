//
//  YYSqliteManager.swift
//  YYWeibo
//
//  Created by g on 2018/11/3.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYSqliteManagerSwift: NSObject {
    //let 是线程安全的
    static let instance = YYSqliteManagerSwift()

    class func shareInstance() -> YYSqliteManagerSwift{
        return instance
    }
}

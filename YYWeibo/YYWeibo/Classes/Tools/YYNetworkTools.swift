//
//  YYNetworkTools.swift
//  YYWeibo
//
//  Created by g on 2018/10/9.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

enum RequestType: Int {
    case GET
    case POST
}

class YYNetworkTools: NSObject {
    static let shareTools : YYNetworkTools = {
        let tools = YYNetworkTools()
        
        return tools
    }()
    
    
}

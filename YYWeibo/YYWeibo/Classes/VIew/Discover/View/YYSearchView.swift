//
//  YYSearchView.swift
//  YYWeibo
//
//  Created by g on 2018/10/7.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
//把项目中的这个控件嫁接-----职业搜索
class YYSearchView: UISearchBar {

    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTextFieldRightConstraint: NSLayoutConstraint!
    @IBAction func editBeginAction(_ sender: UITextField) {
        
        print("调了没？？？")
        searchTextFieldRightConstraint.constant = searchButton.width
    }
    
    
    //类方法创建对象
   
    class func searchView()-> YYSearchView {
        return UINib(nibName: "YYSearchView", bundle: nil).instantiate(withOwner: nil, options: nil).last! as! YYSearchView
    }
}

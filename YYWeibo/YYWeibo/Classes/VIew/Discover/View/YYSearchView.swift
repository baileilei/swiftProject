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
    var occupationDataSoure : [String]?
    

    @IBOutlet weak var searchButton: UIButton!
    
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchTextFieldRightConstraint: NSLayoutConstraint!
    @IBAction func editBeginAction(_ sender: UITextField) {
        
        print("调了没？？？")
        searchTextFieldRightConstraint.constant = searchButton.width
        
        let popUp = PopUpSelectorViewController(nibName: "PopUpSelectorViewController", bundle: nil)
        popUp.delegate = self as! PopUpSelectorViewControllerDelegate
        popUp.dataSource = occupationDataSoure
        
        let popOverVC = UIPopoverController(contentViewController: popUp)
        popOverVC.contentSize = popUp.view.bounds.size
        //pop怎么使用？？？
//        let rect = convert(View.frame, from: Vie)
//        popOverVC.present(from: <#T##CGRect#>, in: <#T##UIView#>, permittedArrowDirections: <#T##UIPopoverArrowDirection#>, animated: <#T##Bool#>)
        
        
    }
    
    
    
    
    //类方法创建对象
   
    class func searchView()-> YYSearchView {
        return UINib(nibName: "YYSearchView", bundle: nil).instantiate(withOwner: nil, options: nil).last! as! YYSearchView
    }
}

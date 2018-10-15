//
//  YYHomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import YYModel

private let YYHomeTableViewCellIndentifier = "YYHomeTableViewCellIndentifier"

class YYHomeViewController: YYVistorTableViewController {
    //private VS fileprivate的区别
    fileprivate lazy var statusListVM :YYStatusListVM = YYStatusListVM()
//    lazy var statusList : [YYStatus] = [YYStatus]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isLogin {
            
            vistorView?.updateVisitorInfo(message: nil, imageName: nil)
        }else{
//            loadData()
            setupTableView()
            statusListVM.loadData { (isSuccess) in
                if isSuccess {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    
    private func setupTableView(){
        tableView.register(YYHomeTableViewCell.self, forCellReuseIdentifier: "YYHomeTableViewCellIndentifier")
        //自动计算行高
        tableView.rowHeight = UITableViewAutomaticDimension
        tableView.estimatedRowHeight = 200
        
    }
    
   
}

extension YYHomeViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.statusListVM.statusList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "YYHomeTableViewCellIndentifier", for: indexPath) as! YYHomeTableViewCell
        
//        cell.backgroundColor = RandomColor()
        cell.statusVM = statusListVM.statusList[indexPath.row]
        return cell;
    }
    
    
}

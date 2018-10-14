//
//  YYHomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit
import YYModel

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
            statusListVM.loadData { (isSuccess) in
                if isSuccess {
                    self.tableView.reloadData()
                }
            }
        }
        
    }
    
    private func setupTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
    }
    
   
}

extension YYHomeViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.statusListVM.statusList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        
        
        return cell;
    }
    
    
}

//
//  YYHomeViewController.swift
//  YYWeibo
//
//  Created by g on 2018/10/5.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

class YYHomeViewController: YYVistorTableViewController {
    
    lazy var statusList : [YYStatus] = [YYStatus]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if !isLogin {
            
            vistorView?.updateVisitorInfo(message: nil, imageName: nil)
        }else{
            loadData()
        }
        
    }
    
    private func setupTableView(){
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "test")
    }
    
    //load home data
    func loadData() {
        let accessToken = YYUserAccount.loadUserAccount()?.access_token
        YYNetworkTools.shareTools.requestStatuses(accessToken: accessToken!) { (reponse, error) in
            if error != nil{
                return
            }
            
            guard let dict : [String:Any] = reponse as? [String:Any] else{
                return
            }
            
            
            guard let statusArray = dict["statuses"] as? [[String:Any]] else{
                return
            }
            
            
            
            self.tableView.reloadData()
            
        }
        
    }
    
}


extension YYHomeViewController{
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.statusList.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "test", for: indexPath)
        
        
        return cell;
    }
    
}

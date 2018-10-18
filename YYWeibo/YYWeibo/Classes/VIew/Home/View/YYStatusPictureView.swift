//
//  YYStatusPictureView.swift
//  YYWeibo
//
//  Created by g on 2018/10/16.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

private let YYStatusPictureViewCellIdentifier = "YYStatusPictureViewCellIdentifier"

let itemMargin : CGFloat = 5

let itemWidth = (ScreenWidth - 2 * 10 - 2 * itemMargin)/3

class YYStatusPictureView: UICollectionView {
    lazy var messagelabel: UILabel = {
        let label = UILabel(textColor: UIColor.magenta, fontSize: 20, isMultiNumbers: 1)
        label.sizeToFit()
        return label
    }()
    
    var picUrls: [YYStatusPictureInfo]?{
        didSet{
            messagelabel.text = "\(picUrls?.count ?? 0)"
            
            let size = calcSize(count: picUrls?.count ?? 0)
            
            self.snp_updateConstraints { (make) in
                make.size.equalTo(size)
            }
            
            self.reloadData()
        }
    }
    
    
//    var statusVM:YYStatusVM? = {
//
//        didSet{
//            messagelabel.text =
//        }
//    }
    
   
    
    override init(frame: CGRect, collectionViewLayout layout: UICollectionViewLayout) {
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.itemSize = CGSize(width: itemWidth, height: itemWidth)
        flowLayout.minimumLineSpacing = itemMargin
        flowLayout.minimumInteritemSpacing = itemMargin
        super.init(frame: frame, collectionViewLayout: flowLayout)
        self.dataSource = self
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.register(YYStatusPictureViewCell.self, forCellWithReuseIdentifier: YYStatusPictureViewCellIdentifier)
        backgroundColor = RandomColor()
        
        addSubview(messagelabel)
        
        messagelabel.snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
    }
    
    private func calcSize(count:Int)->CGSize{
       
        
        let cols = count > 3 ? 3 :count
        let rows = (count - 1) / 3 + 1
        
        let currentWidth = itemWidth * CGFloat(cols) + CGFloat(cols - 1) * itemMargin
        
        let currentHeight = itemWidth * CGFloat(rows) + CGFloat(rows - 1) * itemMargin
        
        
        
        return CGSize(width: currentWidth, height: currentHeight)
    }
    
}

extension YYStatusPictureView: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return picUrls?.count ?? 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: YYStatusPictureViewCellIdentifier, for: indexPath) as! YYStatusPictureViewCell
        cell.backgroundColor = RandomColor()
//        cell.statusPictureInfo = picUrls?[indexPath.item]
        
        return cell
        
    }
    
}


class YYStatusPictureViewCell: UICollectionViewCell {
    var statusPictureInfo: YYStatusPictureInfo?{
        
        
        didSet{
            
            if let url = statusPictureInfo?.thumbnail_pic{
                
                imgaeView.sd_setImage(with: URL(string: url), placeholderImage: UIImage(named: "time_image_placeholder"), options: .allowInvalidSSLCertificates, completed: nil)
            }
        }
    }
    
    
    private lazy var imgaeView: UIImageView = {
        let view = UIImageView(image: UIImage(named: "time_image_placeholder"))
        return view
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        contentView.addSubview(imgaeView)
        
        imgaeView.snp_makeConstraints { (make) in
            make.edges.equalTo(self).offset(UIEdgeInsets.zero)
        }
    }
    
}

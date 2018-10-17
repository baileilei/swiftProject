//
//  YYStatusPictureView.swift
//  YYWeibo
//
//  Created by g on 2018/10/16.
//  Copyright © 2018 g. All rights reserved.
//

import UIKit

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
        
        super.init(frame: frame, collectionViewLayout: flowLayout)
        
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        backgroundColor = RandomColor()
        
        addSubview(messagelabel)
        
        messagelabel.snp_makeConstraints { (make) in
            make.centerX.equalTo(self)
            make.centerY.equalTo(self)
        }
    }
    
    private func calcSize(count:Int)->CGSize{
        let itemMargin : CGFloat = 5
        
        let itemWidth = (ScreenWidth - 2 * 10 - 2 * itemMargin)/3
        
        let cols = count > 3 ? 3 :count
        let rows = (count - 1) / 3 + 1
        
        let currentWidth = itemWidth * CGFloat(cols) + CGFloat(cols - 1) * itemMargin
        
        let currentHeight = itemWidth * CGFloat(rows) + CGFloat(rows - 1) * itemMargin
        
        
        
        return CGSize(width: currentWidth, height: currentHeight)
    }
    
}

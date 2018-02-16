//
//  DYHomeTopBarCollectionViewCell.swift
//  DouYuZB
//
//  Created by zsx on 2018/2/15.
//  Copyright © 2018年 zsx. All rights reserved.
//

import UIKit
import SnapKit

class DYHomeTopBarCollectionViewCell: UICollectionViewCell {
    
    
    var model:DYHomeTopBarModel!{
        didSet{
            self.titleLb.text = model.title
            if model.isSelect! {
                self.titleLb.textColor = UIColor.orange
            }else{
                self.titleLb.textColor = UIColor.gray
            }
            self.redView.isHidden = !(model.isSelect!)
        }
    }
    
    private var titleLb:UILabel!
    private var redView:UIView!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        createUi()
    }
    private func createUi() {
        titleLb = UILabel()
        titleLb.font = UIFont.systemFont(ofSize: 16.0)
        titleLb.textColor = UIColor.orange
        self.contentView.addSubview(titleLb)
        
        titleLb.snp.makeConstraints { (make) in
            make.center.equalTo(self.contentView)
        }
        
        
        redView = UIView()
        redView.backgroundColor = UIColor.orange
        self.contentView.addSubview(redView)
        redView.snp.makeConstraints { (make) in
            make.left.bottom.right.equalTo(self.contentView)
            make.height.equalTo(2)
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

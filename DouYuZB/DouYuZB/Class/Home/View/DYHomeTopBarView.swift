//
//  DYHomeTopBarView.swift
//  DouYuZB
//
//  Created by zsx on 2018/2/15.
//  Copyright © 2018年 zsx. All rights reserved.
//

import UIKit

class DYHomeTopBarView: UIView, UICollectionViewDelegate, UICollectionViewDataSource {
    
    private var dataArr:[DYHomeTopBarModel] = []
    
    private let DYHomeTopBarCollectionViewCellIdentifier = "DYHomeTopBarCollectionViewCell"
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.isUserInteractionEnabled = true
        
        let arr = ["推荐","游戏","娱乐","趣玩"]
        for title in arr {
            if title=="推荐" {
                let model = DYHomeTopBarModel(title: title, isSelect: true)
                self.dataArr.append(model)
            }else{
                let model = DYHomeTopBarModel(title: title, isSelect: false)
                self.dataArr.append(model)
            }
        }
        
        createUi()
    }
    
    private func createUi() {
        let layout = UICollectionViewFlowLayout()
        let w = self.frame.size.width / CGFloat(dataArr.count)
        layout.itemSize = CGSize(width: w, height: 44)
        layout.minimumLineSpacing = 0
        layout.minimumInteritemSpacing = 0
        layout.sectionInset = UIEdgeInsets(top: 0, left: 0, bottom: 0, right: 0)
        layout.scrollDirection = UICollectionViewScrollDirection.horizontal
        
        
        let topBarCollectionView = UICollectionView(frame: self.bounds, collectionViewLayout: layout)
        topBarCollectionView.delegate = self
        topBarCollectionView.dataSource = self
        topBarCollectionView.backgroundColor = UIColor.white
        topBarCollectionView.register(DYHomeTopBarCollectionViewCell.self, forCellWithReuseIdentifier: DYHomeTopBarCollectionViewCellIdentifier)
        self.addSubview(topBarCollectionView)
        
    }

    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
     
        return self.dataArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DYHomeTopBarCollectionViewCellIdentifier, for: indexPath) as! DYHomeTopBarCollectionViewCell
        cell.model = self.dataArr[indexPath.row]
        return cell
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
}

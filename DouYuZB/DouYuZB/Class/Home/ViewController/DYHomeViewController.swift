//
//  DYHomeViewController.swift
//  DouYuZB
//
//  Created by zsx on 2018/2/15.
//  Copyright © 2018年 zsx. All rights reserved.
//

import UIKit

class DYHomeViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    private var mainCollectionView:UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.view.backgroundColor = UIColor.orange
        
        createNaviItem()
        
        createUi()
    }
    private func createNaviItem() {
        let leftLogo = UIImage(named: "logo")
        
        self.navigationItem.leftBarButtonItem = UIBarButtonItem(image: leftLogo, style: UIBarButtonItemStyle.plain, target: self, action: nil)
        
        func createBtn(image:String, highImage:String, sel:Selector) -> UIBarButtonItem{
            let btn = UIButton(type: UIButtonType.custom)
            btn.frame = CGRect(x: 0, y: 0, width: 44, height: 44)
            btn.setImage(UIImage(named: image), for: UIControlState.normal)
            btn.setImage(UIImage(named: highImage), for: UIControlState.highlighted)
            btn.addTarget(self, action: sel, for: UIControlEvents.touchUpInside)
            
            let item = UIBarButtonItem(customView: btn)
            
            return item
        }
        
        let item1 = createBtn(image: "Image_scan", highImage: "Image_scan_click", sel: #selector(scanAction))
        let item2 = createBtn(image: "btn_search", highImage: "btn_search_clicked", sel: #selector(searchAction))
        let item3 = createBtn(image: "image_my_history", highImage: "Image_my_history_click", sel: #selector(historyAction))
        
        self.navigationItem.rightBarButtonItems = [item3,item2,item1]
    }
    private func createUi() {
        
        let topBar = DYHomeTopBarView(frame: CGRect(x: 0, y: 64, width: UIScreen.main.bounds.size.width, height: 44))
        self.view.addSubview(topBar)
        
        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: (UIScreen.main.bounds.size.width-30)/2, height: (UIScreen.main.bounds.size.width-30)/3)
        layout.minimumLineSpacing = 10
        layout.minimumInteritemSpacing = 10
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        
        
        self.mainCollectionView = UICollectionView(frame: CGRect(x: 0, y: 0, width: 0, height: 0), collectionViewLayout: layout)
        self.mainCollectionView.delegate = self
        self.mainCollectionView.dataSource = self
        self.mainCollectionView.backgroundColor = UIColor.white
        self.mainCollectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        self.view.addSubview(self.mainCollectionView)
        
        self.mainCollectionView.snp.makeConstraints { (make) in
            make.left.right.bottom.equalTo(self.view)
            make.top.equalTo(topBar.snp.bottom)
        }
    }
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 2
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.contentView.backgroundColor = UIColor.red
        return cell
    }
    
    @objc private func scanAction() {
        
    }
    @objc private func searchAction() {
        
    }
    @objc private func historyAction() {
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

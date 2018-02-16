//
//  DYTabBarController.swift
//  DouYuZB
//
//  Created by zsx on 2018/2/15.
//  Copyright © 2018年 zsx. All rights reserved.
//

import UIKit

class DYTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let homeVC = DYHomeViewController()
        
        let homeNavi = DYNavigationController(rootViewController: homeVC)
        
        homeNavi.tabBarItem.image = UIImage(named: "btn_home_normal")
        homeNavi.tabBarItem.selectedImage = UIImage(named: "btn_home_selected")
        homeNavi.tabBarItem.title = "首页"
        
        
        
        
        
        
        let liveVC = DYLiveViewController()
        
        let liveNavi = DYNavigationController(rootViewController: liveVC)
        
        liveNavi.tabBarItem.image = UIImage(named: "btn_column_normal")
        liveNavi.tabBarItem.selectedImage = UIImage(named: "btn_column_selected")
        liveNavi.tabBarItem.title = "直播"
        
        
        let attentionVC = DYAttentionViewController()
        
        let attentionNavi = DYNavigationController(rootViewController: attentionVC)
        
        attentionNavi.tabBarItem.image = UIImage(named: "btn_live_normal")
        attentionNavi.tabBarItem.selectedImage = UIImage(named: "btn_live_selected")
        attentionNavi.tabBarItem.title = "关注"
        
        
        let mineVC = DYMineViewController()
        
        let mineNavi = DYNavigationController(rootViewController: mineVC)
        
        mineNavi.tabBarItem.image = UIImage(named: "btn_user_normal")
        mineNavi.tabBarItem.selectedImage = UIImage(named: "btn_user_selected")
        mineNavi.tabBarItem.title = "我的"
        
        self.viewControllers = [homeNavi,liveNavi,attentionNavi,mineNavi]
        
        self.tabBar.tintColor = UIColor.orange
        self.tabBar.barTintColor = UIColor.white
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

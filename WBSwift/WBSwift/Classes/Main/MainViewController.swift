//
//  MainViewController.swift
//  WBSwift
//
//  Created by mac on 16/11/23.
//  Copyright © 2016年 kevin. All rights reserved.
//

import UIKit

class MainViewController: UITabBarController {

    lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgImageName: "tabbar_compose_button")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        UITabBar.appearance().tintColor = UIColor.orangeColor()
        UINavigationBar.appearance().tintColor = UIColor.orangeColor()
        setupCompose()
        
        /* 纯代码构建框架
        addChildViewController(HomeViewController(), title: "首页", imageName: "tabbar_home")
        addChildViewController(MessageViewController(), title: "消息", imageName: "tabbar_message_center")
        addChildViewController(DiscoverViewController(), title: "发现", imageName: "tabbar_discover")
        addChildViewController(ProfileViewController(), title: "我", imageName: "tabbar_profile")
        */
    }
    /* 纯代码构建框架
    private func addChildViewController(childVc: UIViewController, title : String, imageName : String) {
        childVc.title = title;
        childVc.tabBarItem.image = UIImage(named: imageName)
        childVc.tabBarItem.selectedImage = UIImage(named: imageName + "_highlighted")
        let nav = UINavigationController.init(rootViewController: childVc)
        
        addChildViewController(nav)
    }
     */

}
// MARK: - 设置UI
extension MainViewController {
    private func setupCompose() {
        tabBar.addSubview(composeBtn)
//        print(tabBar.bounds.size.height)
        composeBtn.center = CGPointMake(tabBar.center.x, tabBar.bounds.size.height * 0.5)
        composeBtn.addTarget(self, action: #selector(MainViewController.composeBtnClick), forControlEvents: .TouchUpInside)
    }
}

// MARK: - 事件监听
extension MainViewController {
    @objc private func composeBtnClick() {
        let composeVC = ComposeViewController()
        let composeNav = UINavigationController(rootViewController: composeVC)
        
        presentViewController(composeNav, animated: true, completion: nil)
    }
}
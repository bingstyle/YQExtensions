//
//  UITabBarControllerExtension.swift
//  SwiftDemo
//
//  Created by weixb on 2018/3/7.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

// MARK: - Methods
public extension UITabBarController {
    
    func viewController(vcClass: Swift.AnyClass, title: String, image: UIImage, selectedImage: UIImage) -> UIViewController {
        
        let cls = vcClass as! UIViewController.Type
        let vc = cls.init()
        
        vc.tabBarItem = UITabBarItem.init(title: title, image: image, selectedImage: selectedImage)
        return vc
    }
    
    func navigationController(vcClass: Swift.AnyClass, title: String, image: UIImage, selectedImage: UIImage) -> UINavigationController {
        
        let cls = vcClass as! UIViewController.Type
        let vc = cls.init()
        
        let nav: UINavigationController = UINavigationController.init(rootViewController: vc)
        nav.tabBarItem = UITabBarItem.init(title: title, image: image.withRenderingMode(.alwaysOriginal), selectedImage: selectedImage.withRenderingMode(.alwaysOriginal))
        nav.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white, .font: UIFont.boldSystemFont(ofSize: 20)]
        vc.navigationItem.title = title
        nav.navigationBar.tintColor = .white
        nav.navigationBar.setBackgroundImage(#imageLiteral(resourceName: "nav_bg").changeImageSize(CGSize.init(width: UIScreen.main.bounds.width, height: UIDevice.isIPhoneXSeries() ? 88 : 64)), for: .default)
        return nav
    }
}

public extension UIViewController {
    //添加子控制器
    func addChildVC(_ childVC: UIViewController) {
        addChild(childVC)
        view.addSubview(childVC.view)
        childVC.didMove(toParent: self)
        childVC.beginAppearanceTransition(true, animated: false)
        childVC.endAppearanceTransition()
    }
    //从父控制器移除
    func removeFromParentVC() {
        view.removeFromSuperview()
        self.removeFromParent()
    }
}

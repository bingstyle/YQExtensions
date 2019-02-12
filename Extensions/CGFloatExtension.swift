//
//  CGFloatExtension.swift
//  YQExtensionsDemo
//
//  Created by WeiXinbing on 2019/2/12.
//  Copyright © 2019 weixb. All rights reserved.
//

import UIKit

public extension CGFloat {
    
    static let zeroHeight = CGFloat(0.00000000000000000001)
    
    // ~= 20
    static func statusBar() -> CGFloat {
        #if os(iOS)
        return UIApplication.shared.statusBarFrame.height
        #else
        return 0
        #endif
    }
    
    // ~= 44
    static func navigationBar(_ controller: UIViewController?) -> CGFloat {
        if let navi = controller?.navigationController {
            return navi.navigationBar.frame.height
        }
        return 0
    }
    
    // ~= 49
    static func tabBar(_ controller: UIViewController?) -> CGFloat {
        if let tabBar = controller?.tabBarController {
            return tabBar.tabBar.frame.height
        }
        return 0
    }
}

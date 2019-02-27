//
//  UIDeviceExtension.swift
//  MGApp
//
//  Created by weixb on 2018/8/7.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

public extension UIDevice {
    
    public static func isIPhoneXSeries() -> Bool {
        var flag = false
        if UIDevice.current.userInterfaceIdiom != UIUserInterfaceIdiom.phone {
            return false
        }
        
        if #available(iOS 11.0, OSX 10.10, *) {
            if let mainWindow = UIApplication.shared.delegate?.window as? UIWindow {
                if mainWindow.safeAreaInsets.bottom > 0.0 {
                    flag = true
                }
            }
        }
        return flag
    }
}

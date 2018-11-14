//
//  UIDeviceExtension.swift
//  MGApp
//
//  Created by weixb on 2018/8/7.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

public extension UIDevice {
    
    public static func isX() -> Bool {
        if UIScreen.main.bounds.height == 812 {
            return true
        }
        return false
    }
    
}

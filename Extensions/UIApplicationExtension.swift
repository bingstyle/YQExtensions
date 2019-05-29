//
//  UIApplicationExtension.swift
//  YQExtensionsDemo
//
//  Created by WeiXinbing on 2019/2/28.
//  Copyright © 2019 weixb. All rights reserved.
//

import UIKit

public extension UIApplication {
    
    var appBundleName: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleNameKey as String) as! String
    }
    
    var appBundleID: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleIdentifierKey as String) as! String
    }
    
    var appVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    var appBuildVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }
}

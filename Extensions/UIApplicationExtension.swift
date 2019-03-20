//
//  UIApplicationExtension.swift
//  YQExtensionsDemo
//
//  Created by WeiXinbing on 2019/2/28.
//  Copyright © 2019 weixb. All rights reserved.
//

import Foundation

public extension UIApplication {
    
    public var appBundleName: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleNameKey as String) as! String
    }
    
    public var appBundleID: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleIdentifierKey as String) as! String
    }
    
    public var appVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: "CFBundleShortVersionString") as! String
    }
    
    public var appBuildVersion: String {
        return Bundle.main.object(forInfoDictionaryKey: kCFBundleVersionKey as String) as! String
    }
}

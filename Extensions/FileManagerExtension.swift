//
//  FileManagerExtension.swift
//  MGApp
//
//  Created by weixb on 2018/8/3.
//  Copyright © 2018年 weixb. All rights reserved.
//

import Foundation

public extension FileManager {
    //清楚缓存数据
    class func clearCache() {
        
        // 取出cache文件夹目录 缓存文件都在这个目录下
        let libCachePath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first?.relativePath ?? ""
        if let libFileArr = FileManager.default.subpaths(atPath: libCachePath) {
            // 遍历删除
            for file in libFileArr {
                let path = libCachePath.appending("/\(file)")
                if FileManager.default.fileExists(atPath: path) {
                    do {
                        try? FileManager.default.removeItem(atPath: path)
                    }
                }
            }
        }
    }
    
    //获取缓存大小
    class func fileSizeOfCache()-> String {
        
        var size = 0
        //计算方法
        func calculateSize(fileArr: [String], cachePath: String) {
            //快速枚举出所有文件名 计算文件大小
            for file in fileArr {
                // 把文件名拼接到路径中
                let path = cachePath.appending("/\(file)")
                // 取出文件属性
                let floder = try! FileManager.default.attributesOfItem(atPath: path)
                // 用元组取出文件大小属性
                for (abc, bcd) in floder {
                    // 累加文件大小
                    if abc == FileAttributeKey.size {
                        size += (bcd as AnyObject).integerValue
                    }
                }
            }
        }
        
        let libCachePath = FileManager.default.urls(for: .cachesDirectory, in: .userDomainMask).first?.relativePath ?? ""
        
        // 取出文件夹下所有文件数组
        if let libFileArr = FileManager.default.subpaths(atPath: libCachePath) {
            calculateSize(fileArr: libFileArr, cachePath: libCachePath)
        }
        
        return String.init(format: "%.2fM", Float(size) / 1024 / 1024)
    }
}

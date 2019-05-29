//
//  DoubleExtension.swift
//  YQExtensionsDemo
//
//  Created by WeiXinbing on 2019/2/12.
//  Copyright © 2019 weixb. All rights reserved.
//

import UIKit

public extension Double {
    // toFixed() 方法可四舍五入为指定小数位数的数字。
    func toFixed(_ num: Int) -> Double {
        let divisor = pow(10.0, Double(num))
        return (self * divisor).rounded() / divisor
    }
}

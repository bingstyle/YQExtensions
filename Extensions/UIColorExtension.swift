//
//  UIColorExtension.swift
//  SwiftDemo
//
//  Created by weixb on 2018/3/7.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

// MARK: - Properties
public extension UIColor {
    
    public static var yq_randomColor: UIColor {
        let r = CGFloat(arc4random_uniform(255))
        let g = CGFloat(arc4random_uniform(255))
        let b = CGFloat(arc4random_uniform(255))
        return UIColor.init(red: r / 255, green: g / 255, blue: b / 255, alpha: 1.0)
    }
    
    public var yq_hexString: String {
        let components: [Int] = {
            let c = self.cgColor.components!
            let components = c.count == 4 ? c : [c[0], c[0], c[0], c[1]]
            return components.map { Int($0 * 255.0) }
        }()
        return String(format: "#%02X%02X%02X", components[0], components[1], components[2])
    }
    
}

// MARK: - Initializers
public extension UIColor {
    
    public convenience init?(red r: Int, green g: Int, blue b: Int, alpha: CGFloat = 1) {
        guard r >= 0 && r <= 255 else { return nil }
        guard g >= 0 && g <= 255 else { return nil }
        guard b >= 0 && b <= 255 else { return nil }
        
        var trans = alpha
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }
        
        self.init(red: CGFloat(r) / 255.0, green: CGFloat(g) / 255.0, blue: CGFloat(b) / 255.0, alpha: trans)
    }
    
    public convenience init?(hex: Int, alpha: CGFloat = 1) {
        var trans = alpha
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }
        
        let r = (hex >> 16) & 0xff
        let g = (hex >> 8) & 0xff
        let b = (hex) & 0xff
        self.init(red: r, green: g, blue: b, alpha: trans)
    }
    
    public convenience init?(hexString: String, alpha: CGFloat = 1) {
        var string = ""
        if hexString.lowercased().hasPrefix("0x") {
            string =  hexString.replacingOccurrences(of: "0x", with: "")
        } else if hexString.hasPrefix("#") {
            string = hexString.replacingOccurrences(of: "#", with: "")
        } else {
            string = hexString
        }
        
        if string.count == 3 { // convert hex to 6 digit format if in short format
            var str = ""
            string.forEach { str.append(String(repeating: String($0), count: 2)) }
            string = str
        }
        
        guard let hex = Int(string, radix: 16) else { return nil }
        
        var trans = alpha
        if trans < 0 { trans = 0 }
        if trans > 1 { trans = 1 }
        
        let r = (hex >> 16) & 0xff
        let g = (hex >> 8) & 0xff
        let b = (hex) & 0xff
        self.init(red: r, green: g, blue: b, alpha: trans)
    }
}

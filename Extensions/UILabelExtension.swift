//
//  UILabelExtension.swift
//  SwiftDemo
//
//  Created by weixb on 2018/3/7.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

// MARK: - Methods
public extension UILabel {
    
    /// SwifterSwift: Initialize a UILabel with text
    public convenience init(text: String?) {
        self.init()
        self.text = text
    }
    
    /// SwifterSwift: Required height for a label
    public var requiredHeight: CGFloat {
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: frame.width, height: CGFloat.greatestFiniteMagnitude))
        label.numberOfLines = 0
        label.lineBreakMode = NSLineBreakMode.byWordWrapping
        label.font = font
        label.text = text
        label.attributedText = attributedText
        label.sizeToFit()
        return label.frame.height
    }
    /// 改变行间距
    public func setAttributed(text: String, lineSpace: CGFloat) {
        let attributedString = NSMutableAttributedString.init(string: text)
        let paragraphStyle = NSMutableParagraphStyle.init()
        paragraphStyle.lineSpacing = lineSpace
        paragraphStyle.alignment = .justified
        paragraphStyle.lineBreakMode = .byTruncatingTail
        attributedString.addAttribute(NSAttributedString.Key.paragraphStyle, value: paragraphStyle, range: NSMakeRange(0, text.charactersArray.count))
        self.attributedText = attributedString
        self.sizeToFit()
    }
    
}

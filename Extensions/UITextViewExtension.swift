//
//  UITextViewExtension.swift
//  MGApp
//
//  Created by weixb on 2018/4/17.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

// MARK: - Methods
public extension UITextView {
    public func setPlaceHolder(text: String, color: UIColor = .lightGray) {
        let label = UILabel()
        label.text = text
        label.textColor = color
        label.numberOfLines = 0
        label.font = self.font
        label.sizeToFit()
        self.addSubview(label)
        self.setValue(label, forKey: "_placeholderLabel")
    }
}

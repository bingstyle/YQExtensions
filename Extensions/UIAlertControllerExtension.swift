//
//  UIAlertControllerExtension.swift
//  MGApp
//
//  Created by weixb on 2018/7/27.
//  Copyright © 2018年 weixb. All rights reserved.
//

import UIKit

public extension UIAlertController {
    //通用弹窗
    public static func show(title: String?, message: String?, handler: @escaping ()->Void) {
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: .alert)
        let cancelAction = UIAlertAction.init(title: "取消", style: .cancel, handler: nil)
        let okAction = UIAlertAction.init(title: "确定", style: .default) { (action) in
            handler()
        }
        [cancelAction, okAction].forEach { alert.addAction($0) }
        UIApplication.shared.keyWindow?.rootViewController?.present(alert, animated: true, completion: nil)
    }
    
    //弹出输入框
    public func showInput(placeholder: String?, keyboardType: UIKeyboardType = .default, handler: @escaping (String?)->Void) {
        let okAction = UIAlertAction.init(title: "确定", style: .default) { [unowned self] (action) in
            handler(self.textFields?.first?.text)
        }
        let cancelAction = UIAlertAction.init(title: "取消", style: .cancel, handler: nil)
        [okAction, cancelAction].forEach { self.addAction($0) }
        self.addTextField { (textField) in
            textField.placeholder = placeholder
            textField.keyboardType = keyboardType
        }
        UIApplication.shared.keyWindow?.rootViewController?.present(self, animated: true, completion: nil)
    }
}

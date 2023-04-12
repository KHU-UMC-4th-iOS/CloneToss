//
//  UIView+Extension.swift
//  cloneToss
//
//  Created by JOSUEYEON on 2023/04/12.
//

import UIKit

extension UIView {
    func addSubviews(_ view: UIView...) {
        view.forEach {
            self.addSubview($0)
        }
    }
}

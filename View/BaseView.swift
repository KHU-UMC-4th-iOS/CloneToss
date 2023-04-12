//
//  BaseView.swift
//  cloneToss
//
//  Created by JOSUEYEON on 2023/04/12.
//

import UIKit
import SnapKit

class BaseView: UIView {
    let mainButton = UIButton()
    let title = UILabel()
    let image = UIImageView()
    
    func initViews(superView: UIView) {
        superView.addSubviews(mainButton, image)
        
        mainButton.snp.makeConstraints { make in
            make.center.equalToSuperview()
            make.height.equalTo(60)
            make.leading.trailing.equalToSuperview().inset(10)
        }
        mainButton.backgroundColor = .darkGray
        mainButton.layer.cornerRadius = 8
    
        mainButton.addSubviews(title, image)
        
        title.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.left.equalToSuperview().offset(20)
        }
        title.font = UIFont.systemFont(ofSize: 20, weight: .semibold)
        title.text = "토스뱅크"
        title.textColor = .white
        
        image.snp.makeConstraints { make in
            make.centerY.equalToSuperview()
            make.right.equalToSuperview().inset(10)
            make.size.equalTo(15)
        }
        image.tintColor = .white
        image.image = UIImage(systemName: "chevron.right")
        
    }
}

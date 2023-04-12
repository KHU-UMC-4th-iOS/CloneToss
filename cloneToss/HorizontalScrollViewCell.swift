//
//  HorizontalScrollViewCell.swift
//  cloneToss
//
//  Created by 김소현 on 2023/04/12.
//

import UIKit

class HorizontalScrollViewCell: UICollectionViewCell {
    static let identifier: String = "HorizontalScrollViewCell"
    
    lazy var topSubLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "123"
        label.textAlignment = .left
        label.font = UIFont(name: "SFPro-Regular", size: 10)
        return label
    }()
    
    lazy var mainLabel: UILabel = {
        let label: UILabel = UILabel()
        label.text = "123"
        label.textAlignment = .left
        label.font = UIFont(name: "SFPro-Regular", size: 10)
        return label
    }()
    
    let iconImage: UIImageView = {
        let iconImage = UIImageView()
        iconImage.image = UIImage(named: "")
        iconImage.widthAnchor.constraint(equalToConstant: 100).isActive = true
        iconImage.heightAnchor.constraint(equalToConstant: 100).isActive = true
        return iconImage
    }()
    
    public let cellBackgroundView: UIView = {
        let view = UIView()
        view.layer.backgroundColor = UIColor.darkGray.cgColor
        view.layer.cornerRadius = 15
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        backgroundView = cellBackgroundView
        
        [topSubLabel, mainLabel, iconImage].forEach {
            self.addSubview($0)
        }
        
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setConstraints() {
        topSubLabel.translatesAutoresizingMaskIntoConstraints = false
        mainLabel.translatesAutoresizingMaskIntoConstraints = false
        iconImage.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([

        ])
    }
}


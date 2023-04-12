//
//  HorizontalScrollView.swift
//  cloneToss
//
//  Created by 김소현 on 2023/04/12.
//

import UIKit

public var HorizontalScrollView: UICollectionView {
    let layout = UICollectionViewFlowLayout()
    layout.scrollDirection = .horizontal
    layout.minimumLineSpacing = 10

    let collectionView = UICollectionView(frame: .zero, collectionViewLayout: layout)
    collectionView.register(HorizontalScrollViewCell.self, forCellWithReuseIdentifier: HorizontalScrollViewCell.identifier)
    
    return collectionView
}

//
//  HorizontalScrollView+DataSource.swift
//  cloneToss
//
//  Created by 김소현 on 2023/04/12.
//

import UIKit

extension ViewController: UICollectionViewDataSource, UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: HorizontalScrollViewCell.identifier, for: indexPath) as? HorizontalScrollViewCell
        else { return UICollectionViewCell() }
        
        cell.backgroundView = cell.cellBackgroundView
        return cell
    }
}

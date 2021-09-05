//
//  PhotosCollectionViewCustomLayout.swift
//  VKApp
//
//  Created by Boris Sobolev on 28.08.2021.
//

import UIKit

class PhotosCollectionViewCustomLayout: UICollectionViewLayout {
    var cacheAttributes = [IndexPath: UICollectionViewLayoutAttributes]()
    var columnsCount = 2
    private var totalCellsHeight: CGFloat = 0
    
    override func prepare() {
        // init attributes
        self.cacheAttributes = [:]
        // check collectionView
        guard let collectionView = self.collectionView else { return }
        
        // check items > 0
        let itemsCount = collectionView.numberOfItems(inSection: 0)
        guard itemsCount > 0 else { return }
        
        let bigCellWidth = collectionView.frame.width - 32
        let smallCellWidth = (collectionView.frame.width - 48) / CGFloat(self.columnsCount)
        
        var lastY: CGFloat = 16
        var lastX: CGFloat = 16
        
        for index in 0..<itemsCount {
            let indexPath = IndexPath(item: index, section: 0)
            let attributes = UICollectionViewLayoutAttributes(forCellWith: indexPath)
            
            let isBigCell = (index + 1) % (self.columnsCount + 1) == 0
            
            if isBigCell {
                attributes.frame = CGRect(x: 16, y: lastY,
                                          width: bigCellWidth, height: bigCellWidth / 1.7)
                
                lastY += bigCellWidth / 1.7 + 16
            } else {
                attributes.frame = CGRect(x: lastX, y: lastY,
                                          width: smallCellWidth, height: smallCellWidth / 1.2)
                
                let isLastColumn = (index + 2) % (self.columnsCount + 1) == 0 || index == itemsCount - 1
                if isLastColumn {
                    lastX = 16
                    lastY += smallCellWidth / 1.2 + 16
                } else {
                    lastX += smallCellWidth + 16
                }
            }
            
            cacheAttributes[indexPath] = attributes
        }
        self.totalCellsHeight = lastY
    }
    
    override func layoutAttributesForElements(in rect: CGRect) -> [UICollectionViewLayoutAttributes]? {
        return cacheAttributes.values.filter { attributes in
            return rect.intersects(attributes.frame)
        }
    }
    
    override func layoutAttributesForItem(at indexPath: IndexPath) -> UICollectionViewLayoutAttributes? {
        return cacheAttributes[indexPath]
    }
    
    override var collectionViewContentSize: CGSize {
        return CGSize(width: self.collectionView?.frame.width ?? 0,
                      height: self.totalCellsHeight)
    }
}

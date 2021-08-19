//
//  PhotosCollectionViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotosCollectionViewCell"
    
    @IBOutlet var imagePhotosCollectionCell: UIImageView!
    @IBOutlet var likeCountLabelCollectionCell: UILabel!
    
    func configure(imageName: String?, likeCount: Int) {
        imagePhotosCollectionCell.image = UIImage(named: imageName ?? "logo-vk")
        imagePhotosCollectionCell.layer.cornerRadius = 10
        likeCountLabelCollectionCell.text = String(likeCount)
    }
}

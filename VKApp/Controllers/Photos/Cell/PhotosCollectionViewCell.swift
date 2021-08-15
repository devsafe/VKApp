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
    @IBOutlet var imageLikePhotosCollectionCell: UIImageView!
    @IBOutlet var likeCountLabelCollectionCell: UILabel!
    
    func configure(imageName: String?, likeCount: Int) {
        imagePhotosCollectionCell.image = UIImage(named: imageName ?? "logo-vk")
        imagePhotosCollectionCell.layer.cornerRadius = 8
        likeCountLabelCollectionCell.text = String(likeCount)
        imageLikePhotosCollectionCell.image = UIImage(named: "heart")
        let tintableImage = imageLikePhotosCollectionCell.image!.withRenderingMode(.alwaysTemplate)
        imageLikePhotosCollectionCell.image = tintableImage
    }
}

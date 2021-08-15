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
        imagePhotosCollectionCell.layer.borderWidth = 1
        imagePhotosCollectionCell.layer.borderColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        likeCountLabelCollectionCell.text = String(likeCount)
        imageLikePhotosCollectionCell.image = UIImage(named: "heart")
        let tintableImage = imageLikePhotosCollectionCell.image!.withRenderingMode(.alwaysTemplate)
        imageLikePhotosCollectionCell.image = tintableImage
    }
}

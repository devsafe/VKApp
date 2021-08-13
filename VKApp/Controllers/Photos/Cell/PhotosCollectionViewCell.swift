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
    
    func configure(imageName: String?) {
        imagePhotosCollectionCell.image = UIImage(named: imageName ?? "vk")
    }
}

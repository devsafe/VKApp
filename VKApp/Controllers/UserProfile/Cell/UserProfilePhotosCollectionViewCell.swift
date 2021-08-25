//
//  UserProfilePhotosCollectionViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 20.08.2021.
//

import UIKit

class UserProfilePhotosCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet var photosProfileCollectionViewCell: UIImageView!
    
    static let identifier = "UserProfilePhotosCollectionViewCell"
    var likeTapped: (() -> Void)?
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    func configure(photoModel: PhotoModel) {
        photosProfileCollectionViewCell.image = UIImage(named: photoModel.fileName)
    }
    
    func configureCellStaticApperance() {
    }
}

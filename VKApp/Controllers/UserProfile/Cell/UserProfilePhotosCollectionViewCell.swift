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
    let networkService = NetworkService()
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    func configure(photoModel: Photo) {
        networkService.photoLoad(url: photoModel.sizes.last!.url) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let photo):
                self.photosProfileCollectionViewCell.image = photo
            case .failure: print("ERROR")
            }
        }
        
        photosProfileCollectionViewCell.image = UIImage(named: "photoModel.fileName")
    }
    
    func configureCellStaticApperance() {
        photosProfileCollectionViewCell.layer.cornerRadius = 8
        photosProfileCollectionViewCell.layer.borderWidth = 1
        photosProfileCollectionViewCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        photosProfileCollectionViewCell.layer.borderColor = customColor.cgColor
    }
}

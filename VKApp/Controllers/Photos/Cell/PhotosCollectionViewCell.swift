//
//  PhotosCollectionViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotosCollectionViewCell"
    var likeTapped: (() -> Void)?

    @IBOutlet var imagePhotosCollectionCell: UIImageView!
    
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var commentControl: CommentControl!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    func configure(photoModel: PhotoModel) {
        imagePhotosCollectionCell.image = UIImage(named: photoModel.fileName)
       
        likeControl.configure(isLike: photoModel.isLike, likeCount: photoModel.likeCount)
        likeControl.controlTapped = {[weak self] in
            self?.likeTapped?()
        }
        commentControl.configure(commentCount: photoModel.commentMessages.count)
    }
    
    func configureCellStaticApperance() {
        imagePhotosCollectionCell.layer.cornerRadius = 8
        imagePhotosCollectionCell.layer.borderWidth = 1
        imagePhotosCollectionCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        imagePhotosCollectionCell.layer.borderColor = customColor.cgColor
}


}

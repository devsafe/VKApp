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
    func configure(photoModel: PhotoModel) {
        imagePhotosCollectionCell.image = UIImage(named: photoModel.fileName)
        imagePhotosCollectionCell.layer.cornerRadius = 8
        imagePhotosCollectionCell.layer.borderWidth = 1
        imagePhotosCollectionCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let yourColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        //let yourColor2 : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.5 )
        imagePhotosCollectionCell.layer.borderColor = yourColor.cgColor
        likeControl.configure(isLike: photoModel.isLike, likeCount: photoModel.likeCount)
        likeControl.controlTapped = {[weak self] in
            self?.likeTapped?()
        }
        commentControl.configure(commentCount: photoModel.commentMessages.count)
    }
}

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
    
    @IBOutlet var commentControl: CommentControl!
    @IBOutlet var likeControl: LikeControl!
    func configure(imageName: String?, likeCount: Int) {
        imagePhotosCollectionCell.image = UIImage(named: imageName ?? "logo-vk")
        imagePhotosCollectionCell.layer.cornerRadius = 8
        imagePhotosCollectionCell.layer.borderWidth = 1
        imagePhotosCollectionCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let yourColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        //let yourColor2 : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.5 )
        imagePhotosCollectionCell.layer.borderColor = yourColor.cgColor
        
        
        likeControl.configure(isLike: Storage.allUsers[0].photo[0].isLike,
                              likeCount: Storage.allUsers[0].photo[0].likeCount
        )
        likeControl.controlTapped = {[weak self] in
            self?.likeTapped?()
        }
        //likeCountLabelCollectionCell.text = String(likeCount)
       // imageLikePhotosCollectionCell.image = UIImage(named: "heart")
        //let tintableImage = imageLikePhotosCollectionCell.image!.withRenderingMode(.alwaysTemplate)
       // tintableImage.withTintColor(.white)
       // imageLikePhotosCollectionCell.image = tintableImage
        //imageLikePhotosCollectionCell.tintColor = yourColor2
       // commentsButtonOutlet.setImage(UIImage(systemName: "bubble.left"), for: .normal)
      //  commentsButtonOutlet.titleLabel?.text = ""
       // likeButtonOutlet.setImage(UIImage(systemName: "heart"), for: .normal)
    }
}

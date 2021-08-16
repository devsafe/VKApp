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
    @IBOutlet var likeButtonOutlet: UIButton!
    @IBOutlet var commentsButtonOutlet: UIButton!
    @IBOutlet var commentsCountLabelOutlet: UILabel!
    @IBAction func commentsButtonPressed(_ sender: UIButton) {
    }
    @IBAction func likeButtonPressed(_ sender: UIButton) {
    }
    
    func configure(imageName: String?, likeCount: Int) {
        imagePhotosCollectionCell.image = UIImage(named: imageName ?? "logo-vk")
        imagePhotosCollectionCell.layer.cornerRadius = 8
        imagePhotosCollectionCell.layer.borderWidth = 1
        imagePhotosCollectionCell.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let yourColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.8 )
        //let yourColor2 : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.5 )
        imagePhotosCollectionCell.layer.borderColor = yourColor.cgColor
        
        likeCountLabelCollectionCell.text = String(likeCount)
       // imageLikePhotosCollectionCell.image = UIImage(named: "heart")
        //let tintableImage = imageLikePhotosCollectionCell.image!.withRenderingMode(.alwaysTemplate)
       // tintableImage.withTintColor(.white)
       // imageLikePhotosCollectionCell.image = tintableImage
        //imageLikePhotosCollectionCell.tintColor = yourColor2
        commentsButtonOutlet.setImage(UIImage(systemName: "bubble.left"), for: .normal)
        commentsButtonOutlet.titleLabel?.text = ""
        likeButtonOutlet.setImage(UIImage(systemName: "heart"), for: .normal)
    }
}

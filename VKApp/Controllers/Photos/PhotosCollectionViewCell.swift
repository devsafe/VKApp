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
    //    @IBOutlet private var labelChannelsCell: UILabel!
//    @IBOutlet private var detailLabelChannelsCell: UILabel!
//    @IBOutlet private var imageChannelsCell: UIImageView!
//    @IBOutlet private var extraLabelChannelsCell: UILabel!
    
func configure(imageName: String?) {
    imagePhotosCollectionCell.image = UIImage(named: imageName ?? "photo")
//        labelChannelsCell.text = title
//        detailLabelChannelsCell.text = detail + " peoples"
//        extraLabelChannelsCell?.text = extraLabel ?? ""
    
}

}

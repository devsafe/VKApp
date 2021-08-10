//
//  AllChannelsTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class AllChannelsTableViewCell: UITableViewCell {
    
    static let identifier = "FavChannelsTableViewCell"
    
    @IBOutlet private var imageChannelsCell: UIImageView!
    
    @IBOutlet private var labelChannelsCell: UILabel!
    @IBOutlet private var detailLabelChannelsCell: UILabel!
    
    
    func configure(imageName: String?, title: String, detail: String) {
        imageChannelsCell.image = UIImage(named: "defaultChannel")
        labelChannelsCell.text = title
        detailLabelChannelsCell.text = detail
    }
    
    
}

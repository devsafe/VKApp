//
//  FriendsTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    static let identifier = "FriendsTableViewCell"
    @IBOutlet var labelFriendsCell: UILabel!
    @IBOutlet var detailLabelFriendsCell: UILabel!
    @IBOutlet var imageFriendsCell: UIImageView!
    
    func configure(imageName: String?, title: String, detail: String) {
        imageFriendsCell.image = UIImage(named: imageName ?? "avatarDefault")
        imageFriendsCell.layer.cornerRadius = 8
        labelFriendsCell.text = title
        detailLabelFriendsCell.text = detail
    }
}

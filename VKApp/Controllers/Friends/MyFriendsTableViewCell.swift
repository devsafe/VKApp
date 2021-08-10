//
//  FriendsTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class MyFriendsTableViewCell: UITableViewCell {
    
    static let identifier = "MyFriendsTableViewCell"
    @IBOutlet var labelFriendsCell: UILabel!
    
    @IBOutlet var detailLabelFriendsCell: UILabel!
    @IBOutlet var imageFriendsCell: UIImageView!
    
    
    func configure(imageName: String?, title: String, detail: String) {
        imageFriendsCell.image = UIImage(named: "defaultChannel")
        labelFriendsCell.text = title
        detailLabelFriendsCell.text = detail
    }
    
    
}

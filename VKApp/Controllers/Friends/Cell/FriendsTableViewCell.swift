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
    
    func configure(friend: UserModel) {
        imageFriendsCell.image = UIImage(named: friend.avatar)
        labelFriendsCell.text = friend.fullName
        detailLabelFriendsCell.text = friend.location
    }
}

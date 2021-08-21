//
//  ProfileWallTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.08.2021.
//

import UIKit

class ProfileWallTableViewCell: UITableViewCell {
    @IBOutlet var mediaImageOutlet: UIImageView!
    @IBOutlet var authorLabelOutlet: UILabel!
    @IBOutlet var avatarImageOutlet: UIImageView!
    
    static let identifier = "ProfileWallTableViewCell"
    
    override func layoutSubviews() {
            super.layoutSubviews()
            self.configureCellStaticApperance()
        }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        mediaImageOutlet.image = UIImage(named: postModel.media)
        authorLabelOutlet.text = userModel.fullName
        avatarImageOutlet.image = UIImage(named: userModel.avatar)
    }
    
    func configureCellStaticApperance() {
        avatarImageOutlet.layer.cornerRadius = 20
    }
    }

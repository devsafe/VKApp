//
//  FeedCellHeader.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.10.2021.
//

import UIKit

class FeedCellHeader: UITableViewCell {
    
    static let reusedIdentifier = "FeedCellHeader"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()
        //cellView.frame = bounds
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
       // avatarView.image = nil
//        nameLabel.text = nil
//        dataLabel.text = nil
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
//        avatarView.image = UIImage(named: friend.avatarName)
//        nameLabel.text = friend.name
//        dataLabel.text = newsData.data
        
    }
    
    private func configureStatic() {
//        avatarView.translatesAutoresizingMaskIntoConstraints = false
//        avatarView.layer.cornerRadius = 25
    }
}

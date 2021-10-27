//
//  FeedCellHeader.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.10.2021.
//

import UIKit

class FeedCellHeader: UITableViewCell {
    
    static let reusedIdentifier = "FeedCellHeader"
    
    @IBOutlet weak var avatarImage: UIImageView!
    @IBOutlet weak var authorNameLabel: UILabel!
    @IBOutlet weak var postDateLabel: UILabel!
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
        avatarImage.image = UIImage(named: userModel.avatar)
        authorNameLabel.text = userModel.fullName
        postDateLabel.text = postModel.timeStamp
        
//        avatarView.image = UIImage(named: friend.avatarName)
//        nameLabel.text = friend.name
//        dataLabel.text = newsData.data
        
    }
    
    private func configureStatic() {
//        avatarView.translatesAutoresizingMaskIntoConstraints = false
        avatarImage.layer.cornerRadius = 20
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        avatarImage.layer.borderColor = customColor.cgColor
        avatarImage.layer.shadowOffset = .zero
        avatarImage.layer.borderWidth = 1
    }
}

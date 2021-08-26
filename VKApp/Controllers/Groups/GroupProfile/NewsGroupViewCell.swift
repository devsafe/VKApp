//
//  NewsGroupViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.08.2021.
//

import UIKit

class NewsGroupViewCell: UITableViewCell {
    @IBOutlet var authorGroupNewsLabel: UILabel!
    @IBOutlet var logoGroupNewsImage: UIImageView!
    @IBOutlet var mediaGroupNewsImage: UIImageView!
    @IBOutlet var textGroupNewsLabel: UILabel!
    
    static let identifier = "NewsGroupViewCell"
    

    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
        
    }
    
    var avatarTapped: (() -> Void)?
    
    func configure(newsModel: NewsModel, groupModel: GroupModel) {
        logoGroupNewsImage.image = UIImage(named: groupModel.logo)
        authorGroupNewsLabel.text = groupModel.name
//        imageFeedCell.image = UIImage(named: postModel.media)
//        authorLabelFeedCell.text = Storage.allUsers[UserStorage.getIndexByUsername(username: userModel.userName)].fullName
//        avatarImageFeedCell.image = UIImage(named: userModel.avatar)
//        commentControl.configure(commentCount: postModel.commentMessages.count)
//        likeControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
//        textLabelFeedCell.text = postModel.text
//        dateLabelFeedCell.text = postModel.timeStamp
//        viewsCountControl.configure(viewsCount: postModel.commentMessages.count)
    }
    
    func configureCellStaticApperance() {
        logoGroupNewsImage.layer.cornerRadius = 20
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
        
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        logoGroupNewsImage.layer.borderColor = customColor.cgColor
        logoGroupNewsImage.layer.shadowOffset = .zero
        logoGroupNewsImage.layer.borderWidth = 1
    }
}

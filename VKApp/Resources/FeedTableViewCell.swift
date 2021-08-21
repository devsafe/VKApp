//
//  FeedTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    static let identifier = "FeedTableViewCell"
    
    @IBOutlet var imageFeedCell: UIImageView!
    @IBOutlet var titleLableFeedCell: UILabel!
    @IBOutlet var dateLabelFeedCell: UILabel!
    @IBOutlet var avatarImageFeedCell: UIImageView!
    @IBOutlet var textLabelFeedCell: UILabel!
    @IBOutlet var authorLabelFeedCell: UILabel!
    @IBOutlet var commentControl: CommentControl!
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var viewsCountControl: ViewsCountControl!
    
    override func layoutSubviews() {
            super.layoutSubviews()
            self.configureCellStaticApperance()
        }
    
    var avatarTapped: (() -> Void)?
    
    func configure(postModel: PostModel, userModel: UserModel) {
        imageFeedCell.image = UIImage(named: postModel.media)
        authorLabelFeedCell.text = Storage.allUsers[UserStorage.getIndexByUsername(username: userModel.userName)].fullName
        //imageFeedCell.layer.cornerRadius = 8
        avatarImageFeedCell.image = UIImage(named: userModel.avatar)
        //avatarImageFeedCell.layer.cornerRadius = 8
        commentControl.configure(commentCount: postModel.commentMessages.count)
        likeControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
        textLabelFeedCell.text = postModel.text
        dateLabelFeedCell.text = postModel.timeStamp
        viewsCountControl.configure(viewsCount: postModel.commentMessages.count)
    }
    
    func configureCellStaticApperance() {
        avatarImageFeedCell.layer.cornerRadius = 20
    }
}

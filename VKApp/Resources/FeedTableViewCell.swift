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
    
    func configure(postModel: PostModel, userModel: UserModel) {
        imageFeedCell.image = UIImage(named: postModel.media)
        authorLabelFeedCell.text = userModel.surName + " " + userModel.name
        //imageFeedCell.layer.cornerRadius = 8
        avatarImageFeedCell.image = UIImage(named: userModel.avatar)
        //avatarImageFeedCell.layer.cornerRadius = 8
        commentControl.configure(commentCount: postModel.commentMessages.count)
        likeControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
        textLabelFeedCell.text = postModel.text
        dateLabelFeedCell.text = postModel.timeStamp
        viewsCountControl.configure(viewsCount: postModel.commentMessages.count)
    }
}
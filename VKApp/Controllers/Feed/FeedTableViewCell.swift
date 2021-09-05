//
//  FeedTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    static let identifier = "FeedTableViewCell"
    var likeTapped: (() -> Void)?
    
    @IBOutlet var imageFeedCell: UIImageView!
    @IBOutlet var titleLableFeedCell: UILabel!
    @IBOutlet var dateLabelFeedCell: UILabel!
    @IBOutlet var avatarImageFeedCell: UIImageView!
    @IBOutlet var textLabelFeedCell: UILabel!
    @IBOutlet var authorLabelFeedCell: UILabel!
    @IBOutlet var commentControl: CommentControl!
    @IBOutlet var likeControl: LikeControl!
    @IBOutlet var viewsCountControl: ViewsCountControl!
    @IBOutlet var shareControl: ShareControl!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    var avatarTapped: (() -> Void)?
    
    func configure(postModel: PostModel, userModel: UserModel) {
        imageFeedCell.image = UIImage(named: postModel.media)
        authorLabelFeedCell.text = Storage.allUsers[UserStorage.getIndexByUsername(username: userModel.userName)].fullName
        avatarImageFeedCell.image = UIImage(named: userModel.avatar)
        commentControl.configure(commentCount: postModel.commentMessages.count)
        likeControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
        likeControl.controlTapped = {[weak self] in
            self?.likeTapped?()
        }
        
        textLabelFeedCell.text = postModel.text
        dateLabelFeedCell.text = postModel.timeStamp
        viewsCountControl.configure(viewsCount: postModel.commentMessages.count)
        shareControl.configure(isLike: randomBool(), likeCount: Int.random(in: 3..<9))
    }
    
    func configureCellStaticApperance() {
        avatarImageFeedCell.layer.cornerRadius = 20
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        avatarImageFeedCell.layer.borderColor = customColor.cgColor
        avatarImageFeedCell.layer.shadowOffset = .zero
        avatarImageFeedCell.layer.borderWidth = 1
    }
    
    func randomBool() -> Bool {
        return arc4random_uniform(2) == 0
    }
}

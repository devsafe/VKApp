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
    @IBOutlet var postTextLabelOutlet: UILabel!
    @IBOutlet var avatarImageOutlet: UIImageView!
    @IBOutlet var likeProfileWallControl: LikeControl!
    @IBOutlet var commentsProfileWallControl: CommentControl!
    @IBOutlet var shareProfileWallControl: ShareControl!
    @IBOutlet var viewsProfileWallControl: ViewsCountControl!
    
    static let identifier = "ProfileWallTableViewCell"
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureCellStaticApperance()
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        mediaImageOutlet.image = UIImage(named: postModel.media)
        authorLabelOutlet.text = userModel.fullName
        avatarImageOutlet.image = UIImage(named: userModel.avatar)
        postTextLabelOutlet.text = postModel.text
        likeProfileWallControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
        commentsProfileWallControl.configure(commentCount: postModel.commentMessages.count)
        shareProfileWallControl.configure(isLike: false, likeCount: Int.random(in: 3..<9))
        viewsProfileWallControl.configure(viewsCount: postModel.commentMessages.count)
        
    }
    
    func configureCellStaticApperance() {
        avatarImageOutlet.layer.cornerRadius = 20
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
    }
    
    @objc func tappedImage() {
        UIView.animateKeyframes(
            withDuration: 0.3,
            delay: 0,
            options: [.repeat],
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0,
                                   relativeDuration: 0.5,
                                   animations: {
                                    self.avatarImageOutlet.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                    self.avatarImageOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                                   })
                UIView.addKeyframe(withRelativeStartTime: 0.5,
                                   relativeDuration: 0.6,
                                   animations: {
                                    self.avatarImageOutlet.transform = .identity
                                    self.avatarImageOutlet.animationRepeatCount = 4
                                   })
            },
            completion: nil
        )
        
    }
}

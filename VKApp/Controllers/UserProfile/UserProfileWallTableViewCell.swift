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
    var controlTapped: (() -> Void)?
    
    static let identifier = "ProfileWallTableViewCell"
    var likeTapped: (() -> Void)?
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
        configureCellStaticApperance()
        setSingleTap()
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        mediaImageOutlet.image = UIImage(named: postModel.media)
        authorLabelOutlet.text = userModel.fullName
        avatarImageOutlet.image = UIImage(named: userModel.avatar)
        postTextLabelOutlet.text = postModel.text
        likeProfileWallControl.configure(isLike: postModel.isLike, likeCount: postModel.likeCount)
        likeProfileWallControl.controlTapped = {[weak self] in
            self?.likeTapped?()
        }
        commentsProfileWallControl.configure(commentCount: postModel.commentMessages.count)
        shareProfileWallControl.configure(isLike: false, likeCount: Int.random(in: 3..<9))
        viewsProfileWallControl.configure(viewsCount: postModel.commentMessages.count)
        
    }
    
    func configureCellStaticApperance() {
        avatarImageOutlet.layer.cornerRadius = 20
        mediaImageOutlet.isUserInteractionEnabled = true
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
    }
    
    func setSingleTap() {
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleSingleTap))
        singleTap.numberOfTapsRequired = 1
        mediaImageOutlet.addGestureRecognizer(singleTap)
    }
    
    @IBAction func handleSingleTap(sender: UITapGestureRecognizer) {
        print("tap media in post")
        controlTapped?()
    }
}

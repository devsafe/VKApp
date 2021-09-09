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
    
    static let identifier = "ProfileWallTableViewCell"
    
    
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        mediaImageOutlet.image = UIImage(named: postModel.media)
        authorLabelOutlet.text = userModel.fullName
        avatarImageOutlet.image = UIImage(named: userModel.avatar)
        postTextLabelOutlet.text = postModel.text
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

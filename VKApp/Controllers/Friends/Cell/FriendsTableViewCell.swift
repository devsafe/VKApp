//
//  FriendsTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FriendsTableViewCell: UITableViewCell {
    
    static let identifier = "FriendsTableViewCell"
    @IBOutlet var labelFriendsCell: UILabel!
    @IBOutlet var detailLabelFriendsCell: UILabel!
    @IBOutlet var imageFriendsCell: UIImageView!
    var avatarTapped: (() -> Void)?
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
        let tap = UITapGestureRecognizer(target: self, action: #selector(self.tappedImage))
        imageFriendsCell.addGestureRecognizer(tap)
        imageFriendsCell.isUserInteractionEnabled = true
    }
    
    func configure(friend: UserModel) {
        imageFriendsCell.image = UIImage(named: friend.avatar)
        labelFriendsCell.text = friend.fullName
        detailLabelFriendsCell.text = friend.location
    }
    
    func configureCellStaticApperance() {
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
    }
    
    @objc func tappedImage() {
        UIView.animateKeyframes(
            withDuration: 0.3,
            delay: 0,
            options: [],
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0,
                                   relativeDuration: 0.5,
                                   animations: {
                                    
                                    
                                    self.imageFriendsCell.transform = CGAffineTransform(scaleX: 1.1, y: 1.1)
                                    //self.imageFriendsCell.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
                                   })
                
                UIView.addKeyframe(withRelativeStartTime: 0.5,
                                   relativeDuration: 0.5,
                                   animations: {
                                    self.imageFriendsCell.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                                    self.imageFriendsCell.transform = .identity
                                    //self.imageFriendsCell.animationRepeatCount = 4
                                   })
            },
            completion: nil
        )
        
    }
}

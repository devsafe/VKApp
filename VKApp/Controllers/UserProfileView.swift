//
//  UserProfileView.swift
//  VKApp
//
//  Created by Boris Sobolev on 20.08.2021.
//

import UIKit

class UserProfileView: UIViewController {

    @IBOutlet var avatarImageOutlet: UIImageView!
    @IBOutlet var fullnameLabelOutlet: UILabel!
    @IBOutlet var locationLabelOutlet: UILabel!
    @IBOutlet var sendMessageButtonOutlet: UIButton!
    @IBOutlet var followButtonOutlet: UIButton!
    
    var userNameFromOtherView = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let userIndex = UserStorage.getIndexByUsername(username: userNameFromOtherView)
        let user = Storage.allUsers[userIndex!]
        avatarImageOutlet.image = UIImage(named: user.avatar)
        fullnameLabelOutlet.text = user.fullName
        locationLabelOutlet.text = user.location
        sendMessageButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.layer.cornerRadius = 8
    }
}

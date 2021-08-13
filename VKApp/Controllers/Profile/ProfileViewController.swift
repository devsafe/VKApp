//
//  ProfileViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 11.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var logoutButton: UIButton!
    @IBOutlet var profileImage: UIImageView!
    @IBOutlet var profileNameSurName: UILabel!
    @IBOutlet var profileLocation: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 8
       let userId = Storage.userIdActiveSession
        profileImage.image = UIImage(named: (Storage.allUsers[userId].avatar) ?? "avatarDefault")
        profileNameSurName.text = Storage.allUsers[userId].name + " " + Storage.allUsers[userId].surName
        profileLocation.text = Storage.allUsers[userId].location
    }
}

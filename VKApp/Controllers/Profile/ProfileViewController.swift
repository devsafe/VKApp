//
//  ProfileViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 11.08.2021.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var logoutButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 8
    }
}

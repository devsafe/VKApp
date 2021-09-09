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
    
    @IBAction func logoutButtonPressed(_ sender: UIButton) {
        sender.transform = CGAffineTransform(scaleX: 0.6, y: 0.6)

        UIView.animate(withDuration: 2.0,
                                   delay: 0,
                                   usingSpringWithDamping: CGFloat(0.20),
                                   initialSpringVelocity: CGFloat(6.0),
                                   options: UIView.AnimationOptions.allowUserInteraction,
                                   animations: {
                                    sender.transform = CGAffineTransform.identity
            },
                                   completion: { Void in()  }
        )
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        logoutButton.layer.cornerRadius = 8
        let userId = Storage.userIdActiveSession
        profileImage.image = UIImage(named: (Storage.allUsers[userId].avatar))
        profileImage.layer.cornerRadius = 8
        profileNameSurName.text = Storage.allUsers[userId].name + " " + Storage.allUsers[userId].surName
        profileLocation.text = Storage.allUsers[userId].location
        logoutButton.translatesAutoresizingMaskIntoConstraints = false
//        logoutButton.addTarget(self, action: #selector(self.logoutButtonPressed(sender:)), for: .touchDown)
//    }
    
//    @objc func logoutButtonPressed(sender: UIButton) {
//        print("logout button")
//        animateView(logoutButton)
//    }
    }
    func animateView(_ viewToAnimate: UIView) {
        UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.2, initialSpringVelocity: 0.5, options: .curveEaseIn, animations: {
            viewToAnimate.transform = CGAffineTransform(scaleX: 0.95, y: 0.95)
        }) { (_) in
            UIView.animate(withDuration: 0.15, delay: 0, usingSpringWithDamping: 0.4, initialSpringVelocity: 2, options: .curveEaseIn, animations: {
                viewToAnimate.transform = CGAffineTransform(scaleX: 1, y: 1)
        }, completion: nil)

    }
}
}


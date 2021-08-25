//
//  GroupProfileViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.08.2021.
//

import UIKit


class GroupProfileViewController: UIViewController {

    var groupFromOtherView = GroupModel(name: "", description: "", logo: "", fullDescription: "", subscribersCount: 0)
    @IBOutlet var groupControlView: UIView!
    @IBOutlet var logoGroupProfileOutlet: UIImageView!
    @IBOutlet var backGroungViewOutlet: UIView!
    @IBOutlet var smallLogoGroupProfileOutlet: UIImageView!
    @IBOutlet var fullGroupDescriptionLabel: UILabel!
    @IBOutlet var groupSubscribersCountLabelOutlet: UILabel!
    @IBOutlet var followButtonOutlet: UIButton!
    @IBAction func followGroupButtonPressed(_ sender: UIButton) {
        print("follow pressed")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoGroupProfileOutlet.image = UIImage(named: groupFromOtherView.logo)
        
        title = groupFromOtherView.name
        print(groupFromOtherView.name)
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = logoGroupProfileOutlet.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        logoGroupProfileOutlet.addSubview(blurEffectView)
        smallLogoGroupProfileOutlet.image = UIImage(named: groupFromOtherView.logo)
        followButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.setTitle(isGroupInFav(groupName: groupFromOtherView.name) ? "Unfollow" : "Follow", for: .normal)
       // backGroungViewOutlet.alpha = 0.9
    }
    
    func isGroupInFav(groupName: String) -> Bool {
        (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
    }
}

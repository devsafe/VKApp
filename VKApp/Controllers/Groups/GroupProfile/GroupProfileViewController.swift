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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        logoGroupProfileOutlet.image = UIImage(named: groupFromOtherView.logo)
        title = groupFromOtherView.name
        print(groupFromOtherView.name)
        backGroungViewOutlet.layer.cornerRadius = 8
        backGroungViewOutlet.alpha = 0.9
    }
}

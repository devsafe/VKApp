//
//  GroupProfileViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.08.2021.
//

import UIKit


class GroupProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var tapedInAvatar: Bool = false
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Storage.feedGroupNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: NewsGroupViewCell.identifier, for: indexPath) as! NewsGroupViewCell
        cell.configure(newsModel: Storage.feedGroupNews[indexPath.row], groupModel: groupFromOtherView)
        
        cell.avatarTapped = { [weak self] in
            self?.tapedInAvatar = true
            self?.performSegue(withIdentifier: "moveToPhoto", sender: indexPath)
        }
        return cell
    }
    
    var groupFromOtherView = GroupModel(name: "", description: "", logo: "", fullDescription: "", subscribersCount: 0)
    @IBOutlet var groupControlView: UIView!
    @IBOutlet var logoGroupProfileOutlet: UIImageView!
    @IBOutlet var backGroungViewOutlet: UIView!
    @IBOutlet var smallLogoGroupProfileOutlet: UIImageView!
    @IBOutlet var fullGroupDescriptionLabel: UILabel!
    @IBOutlet var groupSubscribersCountLabelOutlet: UILabel!
    @IBOutlet var followButtonOutlet: UIButton!
    @IBOutlet var tableView: UITableView!
    
    @IBAction func followGroupButtonPressed(_ sender: UIButton) {
        print("follow pressed")
        if isGroupInFav(groupName: groupFromOtherView.name) {
            followButtonOutlet.setTitle("Follow", for: .normal)
            Storage.allUsers[Storage.userIdActiveSession].favGroups.remove(at: getIndexGroupByGroupName(groupName: groupFromOtherView.name))
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
            //presentingViewController?.storyboard.allgrou
        } else {
            followButtonOutlet.setTitle("Unfollow", for: .normal)
            Storage.allUsers[Storage.userIdActiveSession].favGroups.append(groupFromOtherView)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
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
    }
    
    func isGroupInFav(groupName: String) -> Bool {
        (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
    }
    func getIndexGroupByGroupName(groupName: String) -> Int!  {
        Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName })
    }
}

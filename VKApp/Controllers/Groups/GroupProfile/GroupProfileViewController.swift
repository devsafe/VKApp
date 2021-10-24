//
//  GroupProfileViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.08.2021.
//

import UIKit


class GroupProfileViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    private var tapedInAvatar: Bool = false
    let networkService = NetworkService()
    
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
    
    var groupFromOtherView = Group()
    @IBOutlet var groupControlView: UIView!
    @IBOutlet var logoGroupProfileOutlet: UIImageView!
    @IBOutlet var backGroungViewOutlet: UIView!
    @IBOutlet var smallLogoGroupProfileOutlet: UIImageView!
    @IBOutlet var fullGroupDescriptionLabel: UILabel!
    @IBOutlet var groupSubscribersCountLabelOutlet: UILabel!
    @IBOutlet var followButtonOutlet: UIButton!
    @IBOutlet var tableView: UITableView!
    
    @IBAction func followGroupButtonPressed(_ sender: UIButton) {
        animateFollowButtonPressed()
        if isGroupInFav(groupName: groupFromOtherView.name) {
            followButtonOutlet.setTitle("Follow", for: .normal)
            followButtonOutlet.backgroundColor = .systemBlue
            Storage.allUsers[Storage.userIdActiveSession].favGroups.remove(at: getIndexGroupByGroupName(groupName: groupFromOtherView.name))
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
            //presentingViewController?.storyboard.allgrou
        } else {
            followButtonOutlet.setTitle("Followed", for: .normal)
            followButtonOutlet.backgroundColor = .systemGray2
            //Storage.allUsers[Storage.userIdActiveSession].favGroups.append(groupFromOtherView)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        
        networkService.photoLoad(url: groupFromOtherView.groupLogo) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let photo):
                self.logoGroupProfileOutlet.image = photo
                self.smallLogoGroupProfileOutlet.image = photo
            case .failure: print("ERROR")
            }
        }
        groupSubscribersCountLabelOutlet.text = "Members: \(groupFromOtherView.members_count)"
        logoGroupProfileOutlet.image = UIImage(named: groupFromOtherView.groupLogo)
        title = groupFromOtherView.name
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        blurEffectView.frame = logoGroupProfileOutlet.bounds
        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        logoGroupProfileOutlet.addSubview(blurEffectView)
        smallLogoGroupProfileOutlet.image = UIImage(named: groupFromOtherView.groupLogo)
        followButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.setTitle(isGroupInFav(groupName: groupFromOtherView.name) ? "Followed" : "Follow", for: .normal)
        fullGroupDescriptionLabel.text = groupFromOtherView.name
        followButtonOutlet.backgroundColor = (isGroupInFav(groupName: groupFromOtherView.name) ? .systemGray2 : .systemBlue)
    }
    
    func isGroupInFav(groupName: String) -> Bool {
        (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
    }
    func getIndexGroupByGroupName(groupName: String) -> Int!  {
        Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName })
    }
    
    @objc func animateFollowButtonPressed() {
        UIView.animateKeyframes(
            withDuration: 0.7,
            delay: 0,
            options: [],
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0,
                                   relativeDuration: 0.1,
                                   animations: {
                                    self.followButtonOutlet.transform = CGAffineTransform(scaleX: 1.05, y: 1.05)
                                   })
                
                UIView.addKeyframe(withRelativeStartTime: 0.2,
                                   relativeDuration: 0.1,
                                   animations: {
                                    self.followButtonOutlet.transform = .identity
                                   })
            },
            completion: nil
        )
        
    }
}

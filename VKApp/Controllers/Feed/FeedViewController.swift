//
//  FeedViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    private var tapedInAvatar: Bool = false
    private var indexPathForPrepare: IndexPath?
    
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowUserProfile2",
            let destination = segue.destination as? UserProfileView,
            let userIndex = tableView.indexPathForSelectedRow
        {
            destination.userNameFromOtherView = Storage.feedNews[userIndex.row].author.userName
        } else if segue.identifier == "ShowFullScreenMedia",
                  let destination = segue.destination as? FullScreenViewController, let indexPath = sender as? IndexPath
        {
          //  destination.photosFromOtherView = [PhotoModel(name: "\(Storage.feedNews[indexPath.row].media)", fileName: "\(Storage.feedNews[indexPath.row].media)", likeCount: 0, commentMessages: [], isLike: false)]
            destination.selectedPhoto = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        tableView.reloadData()
    }
}

extension FeedViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Storage.feedNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as! FeedTableViewCell
        cell.configure(postModel: Storage.feedNews[indexPath.row], userModel: Storage.feedNews[indexPath.row].author)
        cell.likeTapped = {
            Storage.feedNews[indexPath.row].isLike.toggle()
        }
        
        cell.avatarTapped = { [weak self] in
            self?.tapedInAvatar = true
            self?.performSegue(withIdentifier: "moveToPhoto", sender: indexPath)
        }
        
        cell.controlTapped = { [weak self] in
            self?.performSegue(withIdentifier: "ShowFullScreenMedia", sender: indexPath)}
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    
    func showJoinAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are joined to \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
    
    func showJoinError(group: String) {
        let joinAlert = UIAlertController(title: "Error", message: "You are already joined to \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
    
    @objc private func refresh(sender: AnyObject) {
        generateNewPostInFeed()
        tableView.reloadData()
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
    }
    
    func generateNewPostInFeed() {
        Storage.feedNews.insert(PostModel(author: Storage.feedNews.randomElement()!.author, timeStamp: Storage.feedNews.randomElement()!.timeStamp, text: Storage.feedNews.randomElement()!.text, media: Storage.feedNews.randomElement()!.media, likeCount: Storage.feedNews.randomElement()!.likeCount, commentMessages: Storage.feedNews.randomElement()!.commentMessages, isLike: Storage.feedNews.randomElement()!.isLike), at: 0)
    }
    func isGroupInFav(groupName: String) -> Bool {
        (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
    }
    
    func getIndexGroupByGroupName(groupName: String) -> Int!  {
        Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName })
    }
}

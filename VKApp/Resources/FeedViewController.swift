//
//  FeedViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        tableView.refreshControl?.addTarget(self, action: #selector(refresh2), for: UIControl.Event.valueChanged)
    }
}

extension FeedViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Storage.feedNews.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
            let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as! FeedTableViewCell
        cell.configure(image: Storage.feedNews[indexPath.row].media, title: "Oh my " + Storage.feedNews[indexPath.row].author[0].surName)
            return cell
        }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            print("delete feed")
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
print("selectfeed")
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
    
    @objc private func refresh(sender: UIRefreshControl) {
        tableView.reloadData()
        sender.endRefreshing()
    }
    
    @objc private func refresh2(sender: AnyObject) {
        tableView.reloadData()
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
    }
    
    func isGroupInFav(groupName: String) -> Bool {
        (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
    }
    
    func getIndexGroupByGroupName(groupName: String) -> Int!  {
        Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName })
    }
}

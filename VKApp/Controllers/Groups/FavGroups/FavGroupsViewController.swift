//
//  FavGroupsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FavGroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        NotificationCenter.default.addObserver(self, selector: #selector(loadList2), name: NSNotification.Name(rawValue: "load"), object: nil)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.refreshControl?.addTarget(self, action: #selector(refresh2), for: UIControl.Event.valueChanged)
        self.extendedLayoutIncludesOpaqueBars = true
    }
}

extension FavGroupsViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Storage.allUsers[Storage.userIdActiveSession].favGroups.count 
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
        cell.configure(imageName: Storage.allUsers[Storage.userIdActiveSession].favGroups[indexPath.row].logo, title: (Storage.allUsers[Storage.userIdActiveSession].favGroups[indexPath.row].name), detail: (Storage.allUsers[Storage.userIdActiveSession].favGroups[indexPath.row].description), extraLabel: nil, favouritImage: "")
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            showDeleteFavCommunityAlert(group: Storage.allUsers[Storage.userIdActiveSession].favGroups[indexPath.row].name)
            Storage.allUsers[Storage.userIdActiveSession].favGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    @objc private func refresh(sender: AnyObject) {
        tableView.reloadData()
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
    }
    
    @objc private func refresh2(sender: AnyObject) {
        tableView.reloadData()
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
    }
    
    @objc private func loadList2(notification: NSNotification)
    {
        tableView.reloadData()
        self.view.setNeedsDisplay()
    }
    
    func showDeleteFavCommunityAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are exit from \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
}

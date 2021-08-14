//
//  AllChannelsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class AllChannelsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
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

extension AllChannelsViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Storage.allGroups.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if isGroupInFav(groupName: Storage.allGroups[indexPath.row].name) {
            let cell = tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
            cell.configure(imageName: Storage.allGroups[indexPath.row].logo, title: Storage.allGroups[indexPath.row].name, detail: Storage.allGroups[indexPath.row].description, extraLabel: "Joined")
            return cell
        }
        let cell = tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
        cell.configure(imageName: Storage.allGroups[indexPath.row].logo, title: Storage.allGroups[indexPath.row].name, detail: Storage.allGroups[indexPath.row].description, extraLabel: nil)
        return cell
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Storage.allGroups.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if isGroupInFav(groupName: Storage.allGroups[indexPath.row].name) {
            showJoinError(group: Storage.allGroups[indexPath.row].name)
        } else {
            Storage.allUsers[Storage.userIdActiveSession].favGroups.append(Storage.allGroups[indexPath.row])
            showJoinAlert(group: Storage.allGroups[indexPath.row].name)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    func showJoinAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are joined to \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
        tableView.reloadData()
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
}



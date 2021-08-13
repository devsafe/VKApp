//
//  MyFriendsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class MyFriendsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
    }
    
    let showPhotosIdentifier = "ShowPhotos"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == showPhotosIdentifier,
            let destination = segue.destination as? PhotosViewController,
            let userIndex = tableView.indexPathForSelectedRow?.row
        {
            destination.userName = String(userIndex)
        }
    }
}

extension MyFriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Storage.allUsers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: MyFriendsTableViewCell.identifier, for: indexPath) as! MyFriendsTableViewCell
        cell.configure(imageName: Storage.allUsers[indexPath.row].avatar, title: Storage.allUsers[indexPath.row].name + " " + Storage.allUsers[indexPath.row].surName, detail: Storage.allUsers[indexPath.row].location)
        return cell
    }
}

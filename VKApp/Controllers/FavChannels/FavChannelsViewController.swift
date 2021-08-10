//
//  FavChannelsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FavChannelsViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        NotificationCenter.default.addObserver(self, selector: #selector(loadList2), name: NSNotification.Name(rawValue: "load"), object: nil)
        tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension FavChannelsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Variables.favCommunitiesList.favCommunitiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: FavChannelsTableViewCell.identifier, for: indexPath) as! FavChannelsTableViewCell
        cell.configure(imageName: "defaultChannel", title: Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0], detail: Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][1])
        return cell
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //print("can delete")
            Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][2] = "0"
            //print(Variables.favCommunitiesList.favCommunitiesArray)
            //objects.remove(at: indexPath.row)
            let tempGroup = Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0]
            showDeleteFavCommunityAlert(group: tempGroup)
            Variables.favCommunitiesList.favCommunitiesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    @objc func refresh(sender:AnyObject)
    {
        self.tableView.reloadData()
        print("refresh")
       // self.refreshControl?.endRefreshing()
    }
    
    @objc func loadList2(notification: NSNotification)
    {
        self.tableView.reloadData()
        self.view.setNeedsDisplay()
    }
    
    func showDeleteFavCommunityAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are exit from \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
    
}

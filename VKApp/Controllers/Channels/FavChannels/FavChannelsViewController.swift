//
//  FavChannelsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FavChannelsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView: UITableView!
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.allowsSelection = false
        tableView.refreshControl = myRefreshControl
        //navigationController?.navigationBar.prefersLargeTitles = true
        NotificationCenter.default.addObserver(self, selector: #selector(loadList2), name: NSNotification.Name(rawValue: "load"), object: nil)
       // tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: .allEvents)
       // tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        tableView.delegate = self
        tableView.dataSource = self
        //tableView.refreshControl = refresh
        //tableView.register(UITableViewCell.self, forCellReuseIdentifier: "NewCell")
    }
}

extension FavChannelsViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(Variables.favCommunitiesList.favCommunitiesArray.count)
        return Variables.favCommunitiesList.favCommunitiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: ChannelsTableViewCell.identifier, for: indexPath) as! ChannelsTableViewCell
        cell.configure(imageName: "logo-" + Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][2], title: Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0], detail: Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][1], extraLabel: nil)
        return cell
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][2] = "0"
           // let tempGroup = Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0]
            showDeleteFavCommunityAlert(group: Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0])
            Variables.favCommunitiesList.favCommunitiesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
           // NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    @objc private func refresh(sender: UIRefreshControl) {
        tableView.reloadData()
        sender.endRefreshing()
    }
    
    @objc private func loadList2(notification: NSNotification)
    {
//        tableView.reloadData()
//        self.view.setNeedsDisplay()
    }
    
    func showDeleteFavCommunityAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are exit from \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
    
}

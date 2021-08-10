//
//  CommunitiesController.swift
//  VKApp
//
//  Created by Boris Sobolev on 07.08.2021.
//

import UIKit

class FavCommunitiesController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
        self.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        tableView.separatorColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = true
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Variables.favCommunitiesList.favCommunitiesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CommunitiesCell", for: indexPath)
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "rectangle.stack.person.crop.fill")
        content.prefersSideBySideTextAndSecondaryText = false
        
        
        content.text = Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][0]
        content.secondaryText = Variables.favCommunitiesList.favCommunitiesArray[indexPath.row][1] + " peoples"
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
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
        self.refreshControl?.endRefreshing()
    }
    
    @objc func loadList(notification: NSNotification)
    {
        self.tableView.reloadData()
    }
    
    func showDeleteFavCommunityAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are exit from \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
}

//
//  Communities2Controller.swift
//  VKApp
//
//  Created by Boris Sobolev on 08.08.2021.
//

import UIKit

class AllCommunitiesController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = .white
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Variables.communitiesList.communitiesArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "JoinCell", for: indexPath)
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        content.image = UIImage(systemName: "rectangle.stack.person.crop.fill")
        content.prefersSideBySideTextAndSecondaryText = false
        content.text = Variables.communitiesList.communitiesArray[indexPath.row][0]
        content.secondaryText = Variables.communitiesList.communitiesArray[indexPath.row][1] + " peoples"
        cell.contentConfiguration = content
        //cell.accessoryType = Variables.communitiesList.communitiesArray[indexPath.row][2] == "1" ? .checkmark : .none
        //        let difference = Variables.communitiesList.communitiesArray[indexPath.row].difference(from: Variables.favCommunitiesList.favCommunitiesArray[0])
        //        print(difference)
        cell.accessoryType = Variables.communitiesList.communitiesArray[indexPath.row].contains("Swift") ? .checkmark : .none
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        let tempCell2 = ["\(Variables.communitiesList.communitiesArray[indexPath.row][0])", "\(Variables.communitiesList.communitiesArray[indexPath.row][1])", "1"]
        Variables.favCommunitiesList.favCommunitiesArray.append(tempCell2)
        showJoinAlert(group: tempCell2[0])
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
    }
    
    func showJoinAlert(group: String) {
        let joinAlert = UIAlertController(title: "Information", message: "You are joined to \(group) group!", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        joinAlert.addAction(action)
        present(joinAlert, animated: true, completion: nil)
    }
}


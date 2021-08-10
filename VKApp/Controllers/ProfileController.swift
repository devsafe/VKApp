//
//  ProfileController.swift
//  VKApp
//
//  Created by Boris Sobolev on 07.08.2021.
//

import UIKit

class ProfileController: UITableViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.separatorColor = .clear
        //tableView.backgroundColor = .darkGray
        tableView.rowHeight = 65
        self.navigationController?.navigationBar.prefersLargeTitles = true
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    @IBOutlet var profileView: UITableView!
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return Variables.profileList.profileArray.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProfileCell", for: indexPath)
        // Configure the cell...
        var content = cell.defaultContentConfiguration()
        //content.image = UIImage(systemName: "bookmark")
        content.prefersSideBySideTextAndSecondaryText = false
        content.secondaryText = Variables.profileList.profileArray[indexPath.row][0]
        content.text = Variables.profileList.profileArray[indexPath.row][1]
        //content.secondaryTextProperties.alignment = .center
        // content.textProperties.alignment = .center
        content.textProperties.transform = .uppercase
        content.textProperties.font = UIFont.systemFont(ofSize: 15)
        cell.contentConfiguration = content
        return cell
    }
}

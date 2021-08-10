//
//  AllChannelsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class AllChannelsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
    }
}

extension AllChannelsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Variables.communitiesList.communitiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: AllChannelsTableViewCell.identifier, for: indexPath) as! AllChannelsTableViewCell
        cell.configure(imageName: "defaultChannel", title: Variables.communitiesList.communitiesArray[indexPath.row][0], detail: Variables.communitiesList.communitiesArray[indexPath.row][1])
        return cell
    }
    
     func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            //print("can delete")
            Variables.communitiesList.communitiesArray[indexPath.row][2] = "0"
            //print(Variables.communitiesList.communitiesArray)
            //objects.remove(at: indexPath.row)
            let tempGroup = Variables.communitiesList.communitiesArray[indexPath.row][0]
            Variables.communitiesList.communitiesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
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

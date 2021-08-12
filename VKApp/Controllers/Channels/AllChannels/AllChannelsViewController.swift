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
        //self.navigationController?.navigationBar.prefersLargeTitles = true
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        tableView.refreshControl?.addTarget(self, action: #selector(refresh2), for: UIControl.Event.valueChanged)
        
        
    }
}

extension AllChannelsViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        Variables.communitiesList.communitiesArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // let cellNib = UINib(nibName: "CellNibName", bundle: nil)
        // tableView.register(cellNib, forCellReuseIdentifier: ChannelsTableViewCell.identifier)
        
        let word = "\(Variables.communitiesList.communitiesArray[indexPath.row][0])"
        let array = Variables.favCommunitiesList.favCommunitiesArray
        
        
        
        
        if array.contains(where: { $0.contains(word) }) {
            let cell = tableView.dequeueReusableCell(withIdentifier: ChannelsTableViewCell.identifier, for: indexPath) as! ChannelsTableViewCell
            cell.configure(imageName: "logo-" + Variables.communitiesList.communitiesArray[indexPath.row][2], title: Variables.communitiesList.communitiesArray[indexPath.row][0], detail: Variables.communitiesList.communitiesArray[indexPath.row][1], extraLabel: "Joined")
            
            let customView = UIView(frame: CGRect(x: 0, y: 0, width: tableView.frame.width, height: 50))
            customView.backgroundColor = UIColor.clear
            let titleLabel = UILabel(frame: CGRect(x:10,y: 5 ,width:customView.frame.width,height:50))
            titleLabel.numberOfLines = 1;
            titleLabel.lineBreakMode = .byTruncatingMiddle
            titleLabel.backgroundColor = UIColor.clear
            titleLabel.textColor = .black
            titleLabel.font = UIFont(name: "Montserrat-Regular", size: 12)
            titleLabel.text  = "\(Variables.communitiesList.communitiesArray.count) groups at all"
            titleLabel.alpha = 0.6
            customView.addSubview(titleLabel)
            tableView.tableFooterView = customView
            
            return cell
        } else {
            let cell = tableView.dequeueReusableCell(withIdentifier: ChannelsTableViewCell.identifier, for: indexPath) as! ChannelsTableViewCell
            cell.configure(imageName: "logo-" + Variables.communitiesList.communitiesArray[indexPath.row][2], title: Variables.communitiesList.communitiesArray[indexPath.row][0], detail: Variables.communitiesList.communitiesArray[indexPath.row][1], extraLabel: nil)
            // cell.tag = 2
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            Variables.communitiesList.communitiesArray[indexPath.row][2] = "0"
            Variables.communitiesList.communitiesArray.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .left)
            NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        let tempCell2 = ["\(Variables.communitiesList.communitiesArray[indexPath.row][0])", "\(Variables.communitiesList.communitiesArray[indexPath.row][1])", "\(Variables.communitiesList.communitiesArray[indexPath.row][2])"]
        //let tempCell3 = ["\(Variables.communitiesList.communitiesArray[indexPath.row])"]
        
        let word = "\(Variables.communitiesList.communitiesArray[indexPath.row][0])"
        let array = Variables.favCommunitiesList.favCommunitiesArray
        if array.contains(where: { $0.contains(word) }) {
            print("есть такая группа")
            showJoinError(group: tempCell2[0])
           // NotificationCenter.default.post(name: NSNotification.Name(rawValue: "load"), object: nil)
        } else {
            print("нет такой группы")
            Variables.favCommunitiesList.favCommunitiesArray.append(tempCell2)
            showJoinAlert(group: tempCell2[0])
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
        print(Variables.communitiesList.communitiesArray[0][3])
        sender.endRefreshing()
    }
    
    @objc private func refresh2(sender: AnyObject) {
        tableView.reloadData()
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
        
        addChannel()
    }
    
    func addChannel() {
       // var channelTemp = [String]()
        
        if true {
            
            Variables.communitiesList.communitiesArray[0].append(contentsOf: Variables.communitiesList.communitiesArray[0])
            print(Variables.communitiesList.communitiesArray[0])
            
            print("added")
            tableView.reloadData()
            
        }
    }
}



//
//  FavGroupsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit
import RealmSwift

class FavGroupsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    let networkService = NetworkService()
    //private let networkService = NetworkService()
    // let groups = [[GroupsItems]]()
    var groups2 = [Group]()
    var groupsAF: [Group] = []
    
    private var afGroups = GroupsGet()
    
    private var groupsRealm: Results<Group>?
    var tokenRealm: NotificationToken?
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        pairTableAndRealm()
        //networkService.groupsGet(user_id: UserSession.shared.userId)
        //        networkService.groupsGet(user_id: UserSession.shared.userId) { [weak self] result in
        //            guard let self = self else { return }
        //            switch result {
        //            case .success(let groups):
        //                self.groupsAF = groups
        //                self.groups2 = self.groupsAF
        //                print("debug loadWeatherData weatherService: ", self.groupsAF.count)
        //                self.tableView.reloadData()
        //            case .failure: print("ERROR")
        //            }
        //        }
        getGroupsAF()
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        NotificationCenter.default.addObserver(self, selector: #selector(loadList2), name: NSNotification.Name(rawValue: "load"), object: nil)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.refreshControl?.addTarget(self, action: #selector(refresh2), for: UIControl.Event.valueChanged)
        self.extendedLayoutIncludesOpaqueBars = true
    }
    
    
    private func getGroupsAF() {
        afGroups.getMyGroups() {[weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let groups):
                //self.groupsAF = groups
                // self.groups2 = self.groupsAF
                self.loadData()
                self.tableView.reloadData()
            case .failure:
                print("getGroups FAIL")
                print()
            }
        }
    }
    
    func loadData() {
        do {
            let realm = try Realm()
            
            let groupsFromRealm = realm.objects(Group.self)
            print("33333333")
            self.groupsAF = Array(groupsFromRealm)
            print(self.groupsAF)
            
        } catch {
            print(error)
        }
    }
    
    
    private func pairTableAndRealm() {
        guard let realm = try? Realm() else { return }
        groupsRealm = realm.objects(Group.self)
        guard let friendsRealmNotification = groupsRealm else {return}
        tokenRealm = friendsRealmNotification.observe { [weak self] (changes: RealmCollectionChange) in
            guard let tableView = self?.tableView else { return }
            switch changes {
            case .initial:
                tableView.reloadData()
                print("initial")
            case .update(_, let deletions, let insertions, let modifications):
                tableView.beginUpdates()
                tableView.insertRows(at: insertions.map({ IndexPath(row: $0, section: 0) }),
                                     with: .none)
                print("insert")
                tableView.deleteRows(at: deletions.map({ IndexPath(row: $0, section: 0)}),
                                     with: .none)
                print("delete")
                tableView.reloadRows(at: modifications.map({ IndexPath(row: $0, section: 0) }),
                                     with: .none)
                print("reload")
                tableView.endUpdates()
            case .error(let error):
                print("observe.error")
                fatalError("\(error)")
            }
        }
    }
}

extension FavGroupsViewController {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return groupsAF.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: GroupsTableViewCell.identifier, for: indexPath) as! GroupsTableViewCell
        cell.configure(group: groupsAF[indexPath.row])
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
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowGroup",
            let destination = segue.destination as? GroupProfileViewController,
            let groupIndex = tableView.indexPathForSelectedRow
        {
            destination.groupFromOtherView =  groupsAF[groupIndex.row]
        }
    }
    
    @objc private func refresh(sender: AnyObject) {
        tableView.reloadData()
        print("refresh")
        sender.endRefreshing()
        myRefreshControl.endRefreshing()
    }
    
    @objc private func refresh2(sender: AnyObject) {
        print("refresh2")
        
        sender.endRefreshing()
        //getGroupsAF()
        loadData()
        getGroupsAF()
        tableView.reloadData()
        myRefreshControl.endRefreshing()
    }
    
    @objc private func loadList2(notification: NSNotification)
    {
        print("loadList2")
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

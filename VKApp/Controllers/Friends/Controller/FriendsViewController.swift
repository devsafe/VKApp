//
//  FriendsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class FriendsViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    
    @IBOutlet var wordControl: WordControl!
    var friendsSection = [[FriendsItems]]()
    let friends = [[FriendsItems]]()
    var friends2 = [FriendsItems]()
    var friendsAF: [FriendsItems] = []
    private var firstLetters: [String] = []
    let networkService = NetworkService()
    //var friendsAloma: FriendsResponseModel = FriendsResponseModel(response: <#Response#>)
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        networkService.friendsGet(user_id: UserSession.shared.userId) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let friends):
                self.friendsAF = friends.response.items
                self.friends2 = self.friendsAF
                print("debug loadWeatherData weatherService: ", self.friendsAF.count)
                self.tableView.reloadData()
            case .failure: print("ERROR")
            }
        }
        
        
        let friends = friendsAF
        print(friends.count)
        print(friends2.count)
        firstLetters = getFirstLetters(friends)
        wordControl.setLetters(firstLetters)
        wordControl.backgroundColor = .clear
        wordControl.addTarget(self, action: #selector(scrollToLetter), for: .valueChanged)
        friendsSection = sortedForSection(friends, firstLetters: firstLetters)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        tableView.reloadData()
    }
    
    @objc func scrollToLetter() {
        let letter = wordControl.selectLetter
        guard
            let firstIndexForLetter = friendsSection.firstIndex(where: { String($0.first?.first_name.prefix(1) ?? "" ) == letter })
        else {
            return
        }
        tableView.scrollToRow(
            at: IndexPath(row: 0, section: firstIndexForLetter),
            at: .top,
            animated: true)
    }
    static let showPhotosIdentifier = "ShowPhotos"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowUserProfile2",
            let destination = segue.destination as? UserProfileView,
            let userIndex = tableView.indexPathForSelectedRow
        {
            destination.userNameFromOtherView = "admin"
            destination.userFromOtherView = friendsAF[userIndex.row]
        }
    }
}

private func getFirstLetters(_ friends: [FriendsItems]) -> [String] {
    let friendsName = friends.map { $0.first_name }
    let firstLetters = Array(Set(friendsName.map { String($0.prefix(1)) })).sorted()
    return firstLetters
}

private func sortedForSection(_ friends: [FriendsItems], firstLetters: [String]) -> [[FriendsItems]] {
    var friendsSorted: [[FriendsItems]] = []
    firstLetters.forEach { letter in
        let friendsForLetter = friends.filter { String($0.first_name.prefix(1)) == letter}
        friendsSorted.append(friendsForLetter)
    }
    return friendsSorted
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        //friendsSection.count
        1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       // friendsSection[section].count
        friendsAF.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as? FriendsTableViewCell
        else {
            return UITableViewCell()
        }
       // let friend = friendsSection[indexPath.section][indexPath.row]
        let friend = friendsAF[indexPath.row]
        cell.configure(friend: friend)
        return cell
    }
}

func configureCellStaticApperance() {
    //for future implementations
}

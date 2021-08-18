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
    var friendsSection = [[UserModel]]()
    private var firstLetters: [String] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        let friends = Storage.allUsers
        firstLetters = getFirstLetters(friends)
        wordControl.setLetters(firstLetters)
        wordControl.backgroundColor = .clear
        wordControl.addTarget(self, action: #selector(scrollToLetter), for: .valueChanged)
        friendsSection = sortedForSection(friends, firstLetters: firstLetters)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
    }
    @objc func scrollToLetter() {
        let letter = wordControl.selectLetter
        guard
            let firstIndexForLetter = friendsSection.firstIndex(where: { String($0.first?.name.prefix(1) ?? "" ) == letter })
        else {
            return
        }
        tableView.scrollToRow(
            at: IndexPath(row: 0, section: firstIndexForLetter),
            at: .top,
            animated: true)
    }
    let showPhotosIdentifier = "ShowPhotos"
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == showPhotosIdentifier,
            let destination = segue.destination as? PhotosViewController,
            let userIndex = tableView.indexPathForSelectedRow
        {
            destination.userNameFromFriendView = friendsSection[userIndex[0]][userIndex[1]].userName
        }
    }
}
private func getFirstLetters(_ friends: [UserModel]) -> [String] {
    let friendsName = friends.map { $0.name }
    let firstLetters = Array(Set(friendsName.map { String($0.prefix(1)) })).sorted()
    return firstLetters
}
private func sortedForSection(_ friends: [UserModel], firstLetters: [String]) -> [[UserModel]] {
    var friendsSorted: [[UserModel]] = []
    firstLetters.forEach { letter in
        let friendsForLetter = friends.filter { String($0.name.prefix(1)) == letter}
        friendsSorted.append(friendsForLetter)
    }
    return friendsSorted
}

extension FriendsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        friendsSection.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        friendsSection[section].count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: FriendsTableViewCell.identifier, for: indexPath) as? FriendsTableViewCell
        else {
            return UITableViewCell()
        }
        let friend = friendsSection[indexPath.section][indexPath.row]
        cell.configure(friend: friend)
        cell.imageFriendsCell.layer.cornerRadius = 8
        return cell
    }
}

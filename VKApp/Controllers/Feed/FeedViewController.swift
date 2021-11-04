//
//  FeedViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    private var tapedInAvatar: Bool = false
    private var indexPathForPrepare: IndexPath?
    
    
    let myRefreshControl: UIRefreshControl = {
        let refreshControl = UIRefreshControl()
        refreshControl.addTarget(self, action: #selector(refresh(sender:)), for: .valueChanged)
        return refreshControl
    }()
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        return true
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowUserProfile2",
            let destination = segue.destination as? UserProfileView,
            let userIndex = tableView.indexPathForSelectedRow
        {
            destination.userNameFromOtherView = Storage.feedNews[userIndex.row].author.userName
        } else if segue.identifier == "ShowFullScreenMedia",
                  let destination = segue.destination as? FullScreenViewController, let indexPath = sender as? IndexPath
        {
            //  destination.photosFromOtherView = [PhotoModel(name: "\(Storage.feedNews[indexPath.row].media)", fileName: "\(Storage.feedNews[indexPath.row].media)", likeCount: 0, commentMessages: [], isLike: false)]
            destination.selectedPhoto = 0
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(UINib(nibName: FeedCellHeader.reusedIdentifier, bundle: nil),
                           forCellReuseIdentifier: FeedCellHeader.reusedIdentifier)
        
        tableView.register(UINib(nibName: FeedCellText.reusedIdentifier, bundle: nil),
                           forCellReuseIdentifier: FeedCellText.reusedIdentifier)
        
        tableView.register(UINib(nibName: FeedCellPhoto.reusedIdentifier, bundle: nil),
                           forCellReuseIdentifier: FeedCellPhoto.reusedIdentifier)
        
        tableView.register(UINib(nibName: FeedCellFooter.reusedIdentifier, bundle: nil),
                           forCellReuseIdentifier: FeedCellFooter.reusedIdentifier)
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.separatorColor = .clear
        tableView.refreshControl = myRefreshControl
        tableView.refreshControl?.addTarget(self, action: #selector(refresh), for: UIControl.Event.valueChanged)
        tableView.reloadData()
    }
}

extension FeedViewController {
    func numberOfSections(in tableView: UITableView) -> Int {
        Storage.feedNews.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        4
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
            
            // header
        case 0:
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: FeedCellHeader.reusedIdentifier,
                                                         for: indexPath) as? FeedCellHeader
            else {
                return UITableViewCell()
            }
            let feedData = Storage.feedNews[indexPath.section]
            let friend = Storage.feedNews[indexPath.section].author
            cell.configure(postModel: Storage.feedNews[indexPath.section], userModel: Storage.feedNews[indexPath.section].author)
            return cell
            
            // text
        case 1:
            guard
                let cell = tableView.dequeueReusableCell(withIdentifier: FeedCellText.reusedIdentifier,
                                                         for: indexPath) as? FeedCellText
            else {
                return UITableViewCell()
            }
            let news = Storage.feedNews[indexPath.section]
            cell.configure(postModel: Storage.feedNews[indexPath.section], userModel: Storage.feedNews[indexPath.section].author)
            // реализация разворачивания и сворачивания текста
//            cell.controlTapped = { [weak self] in
//            // обновляем данные
//            self?.newsTableView.reloadData()
//        }
        return cell
        
        // photos
    case 2:
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: FeedCellPhoto.reusedIdentifier,
                                                     for: indexPath) as? FeedCellPhoto
        else {
            return UITableViewCell()
        }
            let news = Storage.feedNews[indexPath.section]
        cell.configure(postModel: Storage.feedNews[indexPath.section], userModel: Storage.feedNews[indexPath.section].author)
        // обработка замыкания в ячейке
//        cell.controlTapped = { [weak self] in
//            self?.performSegue(withIdentifier: "showBigImageNews", sender: indexPath)}
        return cell
        
        // footer
    default:
        guard
            let cell = tableView.dequeueReusableCell(withIdentifier: FeedCellFooter.reusedIdentifier,
                                                     for: indexPath) as? FeedCellFooter
        else {
            return UITableViewCell()
        }
            cell.configure(postModel: Storage.feedNews[indexPath.section], userModel: Storage.feedNews[indexPath.section].author)
//        cell.likeTapped = { [weak self] in
//            self?.news[indexPath.section].newsDataModel[0].newsIsLike.toggle()
//            self?.newsTableView.reloadSections(IndexSet(integer: indexPath.section), with: .automatic)
//        }
//        cell.repostTapped = { [weak self] in
//            self?.news[indexPath.section].newsDataModel[0].newsIsRepost.toggle()
//            self?.newsTableView.reloadSections(IndexSet(integer: indexPath.section), with: .automatic)
//        }
//        cell.commentTapped = { [weak self] in
//            self?.news[indexPath.section].newsDataModel[0].newsIsComment.toggle()
//            self?.newsTableView.reloadSections(IndexSet(integer: indexPath.section), with: .automatic)
//        }
        return cell
        
    }
}
        
        
        //        let cell = tableView.dequeueReusableCell(withIdentifier: FeedTableViewCell.identifier, for: indexPath) as! FeedTableViewCell
        //        cell.configure(postModel: Storage.feedNews[indexPath.row], userModel: Storage.feedNews[indexPath.row].author)
        //        cell.likeTapped = {
        //            Storage.feedNews[indexPath.row].isLike.toggle()
        //        }
        //
        //        cell.avatarTapped = { [weak self] in
        //            self?.tapedInAvatar = true
        //            self?.performSegue(withIdentifier: "moveToPhoto", sender: indexPath)
        //        }
        //
        //        cell.controlTapped = { [weak self] in
        //            self?.performSegue(withIdentifier: "ShowFullScreenMedia", sender: indexPath)}
        //
        //        return cell
        
        
        func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
            if editingStyle == .delete {
            }
        }
        
        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        }
        
        func showJoinAlert(group: String) {
            let joinAlert = UIAlertController(title: "Information", message: "You are joined to \(group) group!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
            joinAlert.addAction(action)
            present(joinAlert, animated: true, completion: nil)
        }
        
        func showJoinError(group: String) {
            let joinAlert = UIAlertController(title: "Error", message: "You are already joined to \(group) group!", preferredStyle: .alert)
            let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
            joinAlert.addAction(action)
            present(joinAlert, animated: true, completion: nil)
        }
        
        @objc private func refresh(sender: AnyObject) {
            generateNewPostInFeed()
            tableView.reloadData()
            sender.endRefreshing()
            myRefreshControl.endRefreshing()
        }
        
        func generateNewPostInFeed() {
            Storage.feedNews.insert(PostModel(author: Storage.feedNews.randomElement()!.author, timeStamp: Storage.feedNews.randomElement()!.timeStamp, text: Storage.feedNews.randomElement()!.text, media: Storage.feedNews.randomElement()!.media, likeCount: Storage.feedNews.randomElement()!.likeCount, commentMessages: Storage.feedNews.randomElement()!.commentMessages, isLike: Storage.feedNews.randomElement()!.isLike), at: 0)
        }
        func isGroupInFav(groupName: String) -> Bool {
            (Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName }) != nil) ? true : false
        }
        
        func getIndexGroupByGroupName(groupName: String) -> Int!  {
            Storage.allUsers[Storage.userIdActiveSession].favGroups.firstIndex(where: { $0.name == groupName })
        }
    }

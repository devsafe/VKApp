//
//  UserProfileView2.swift
//  VKApp
//
//  Created by Boris Sobolev on 25.08.2021.
//

import UIKit

class UserProfileView2: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var avatarImageOutlet: UIImageView!
    @IBOutlet var fullnameLabelOutlet: UILabel!
    @IBOutlet var locationLabelOutlet: UILabel!
    @IBOutlet var sendMessageButtonOutlet: UIButton!
    @IBOutlet var followButtonOutlet: UIButton!
    
   
    var userNameFromOtherView = String()
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        FeedStorage.getPostsForUsername(username: userNameFromOtherView).count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileWallTableViewCell.identifier, for: indexPath) as! ProfileWallTableViewCell
        cell.configure(postModel: FeedStorage.getPostsForUsername(username: userNameFromOtherView)[indexPath.row], userModel: Storage.allUsers[UserStorage.getIndexByUsername(username: userNameFromOtherView)])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let photosCount = UserStorage.getPhotosForUsername(username: userNameFromOtherView).count
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfilePhotosCell", for: indexPath) as! UserProfilePhotosCollectionViewCell
        let photos = UserStorage.getPhotosForUsername(username: userNameFromOtherView)[indexPath.item]
        cell.configure(photoModel: photos)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[UserStorage.getIndexByUsername(username: self!.userNameFromOtherView)].photos[indexPath.item].isLike.toggle()
        }
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowUserPhotos",
            let destination = segue.destination as? PhotosViewController
        {
            destination.userNameFromOtherView = userNameFromOtherView
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        tableView.delegate = self
        tableView.dataSource = self
        let userIndex = UserStorage.getIndexByUsername(username: userNameFromOtherView)
        print("user = \(userNameFromOtherView)")
        let user = Storage.allUsers[userIndex!]
        avatarImageOutlet.image = UIImage(named: user.avatar)
        avatarImageOutlet.layer.cornerRadius = 80
        fullnameLabelOutlet.text = user.fullName
        locationLabelOutlet.text = "Location: " + user.location
        sendMessageButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.layer.cornerRadius = 8
        self.title = "id: \(userNameFromOtherView)"
    }
}

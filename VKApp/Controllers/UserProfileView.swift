//
//  UserProfileView.swift
//  VKApp
//
//  Created by Boris Sobolev on 20.08.2021.
//

import UIKit

class UserProfileView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let photosCount = UserStorage.getPhotosForUsername(username: userNameFromOtherView).count
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "ProfilePhotosCell", for: indexPath) as! UserProfilePhotosCollectionViewCell
        let photos = UserStorage.getPhotosForUsername(username: userNameFromOtherView)[indexPath.item]
        cell.configure(photoModel: photos)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[UserStorage.getIndexByUsername(username: self!.userNameFromOtherView)].photo[indexPath.item].isLike.toggle()
        }
        return cell
    }
    

    @IBOutlet var avatarImageOutlet: UIImageView!
    @IBOutlet var fullnameLabelOutlet: UILabel!
    @IBOutlet var locationLabelOutlet: UILabel!
    @IBOutlet var sendMessageButtonOutlet: UIButton!
    @IBOutlet var followButtonOutlet: UIButton!
    @IBOutlet var collectionView: UICollectionView!
    
    var userNameFromOtherView = String()
    
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
        let userIndex = UserStorage.getIndexByUsername(username: userNameFromOtherView)
        let user = Storage.allUsers[userIndex!]
        avatarImageOutlet.image = UIImage(named: user.avatar)
        fullnameLabelOutlet.text = user.fullName
        locationLabelOutlet.text = user.location
        sendMessageButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.layer.cornerRadius = 8
        self.title = "User: \(userNameFromOtherView)"
    }
}

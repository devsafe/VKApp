//
//  PhotosViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    var userNameFromFriendView = String()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print(userNameFromFriendView)
        let titleFriend = Storage.allUsers[UserStorage.getIndexByUsername(username: userNameFromFriendView)].fullName
        self.title = (titleFriend)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    }
}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()

    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let photosCount = UserStorage.getPhotosForUsername(username: userNameFromFriendView).count
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
        let photos = UserStorage.getPhotosForUsername(username: userNameFromFriendView)[indexPath.item]
        cell.configure(photoModel: photos)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[UserStorage.getIndexByUsername(username: self!.userNameFromFriendView)].photo[indexPath.item].isLike.toggle()
        }
        return cell
    }
}

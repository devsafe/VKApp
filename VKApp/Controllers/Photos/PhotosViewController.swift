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
    //let idUsernameFromFriendView = getIndexByUserName(userName: userNameFromFriendView)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let titleForNavigationBar = "\(userNameFromFriendView)"
        self.title = (titleForNavigationBar)
     
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    }
}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        collectionView.collectionViewLayout.invalidateLayout()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let idUsernameFromFriendView = getIndexByUserName(userName: userNameFromFriendView)
        let photosCount = (Storage.allUsers[idUsernameFromFriendView].photo.count)
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
        let idUsernameFromFriendView = getIndexByUserName(userName: userNameFromFriendView)
        let photo = Storage.allUsers[idUsernameFromFriendView].photo[indexPath.item]
        cell.configure(photoModel: photo)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[(self?.getIndexByUserName(userName: self!.userNameFromFriendView))! ].photo[indexPath.item].isLike.toggle()
        }
        return cell
    }
    func getIndexByUserName(userName: String) -> Int  {
        Storage.allUsers.firstIndex(where: { $0.userName == userName }) ?? 0
    }
}

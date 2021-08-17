//
//  PhotosViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var likeControl: LikeControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    var idUserNameFromFriendView = Int()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let titleForNavigationBar = "\(Storage.allUsers[idUserNameFromFriendView].surName) \(Storage.allUsers[idUserNameFromFriendView].name)"
        self.title = titleForNavigationBar
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
        let photosCount = (Storage.allUsers[idUserNameFromFriendView].photo.count)
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
        let photo = Storage.allUsers[idUserNameFromFriendView].photo[indexPath.item]
        cell.configure(photoModel: photo)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[self!.idUserNameFromFriendView].photo[indexPath.item].isLike.toggle()
            //collectionView.reloadSections(IndexSet(integer: 0))
            collectionView.reloadData()
            
        }
        return cell
    }
}

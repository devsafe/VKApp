//
//  PhotosViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    var userNameFromOtherView = String()
    var photosFromOtherView = [Photo]()
    
    var currentLeftSafeAreaInset  : CGFloat = 0.0
    var currentRightSafeAreaInset : CGFloat = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
       // let titleFriend = userNameFromOtherView
        self.title = "Photos"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowFullScreenPhotos",
            let destination = segue.destination as? FullScreenViewController
        {
            destination.photosFromOtherView = photosFromOtherView
            let indexPath2 = collectionView.indexPathsForSelectedItems
            destination.selectedPhoto = indexPath2![0].item
        } else if  segue.identifier == "ShowPhotoPageView",
                   let destination = segue.destination as? PhotoPageContainerViewController
               {
                   destination.photos = UserStorage.getPhotosForUsername(username: userNameFromOtherView)
                   let indexPath2 = collectionView.indexPathsForSelectedItems
                   destination.currentIndex = indexPath2![0].item
               }
    }
}

extension PhotosViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        let photosCount = photosFromOtherView.count
        return photosCount
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as! PhotosCollectionViewCell
        let photos = photosFromOtherView[indexPath.item]
        cell.configure(photoModel: photos)
        cell.likeTapped = { [weak self] in
            Storage.allUsers[UserStorage.getIndexByUsername(username: self!.userNameFromOtherView)].photos[indexPath.item].isLike.toggle()
        }
        return cell
    }
}

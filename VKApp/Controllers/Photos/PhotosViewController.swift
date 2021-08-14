//
//  PhotosViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class PhotosViewController: UIViewController {
    
    @IBOutlet var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
    }
    
    var idUserNameFromFriendView = Int()
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        determineMyDeviceOrientation()
        let titleForNavigationBar = "\(Storage.allUsers[idUserNameFromFriendView].surName) \(Storage.allUsers[idUserNameFromFriendView].name)"
        navigationController?.title = titleForNavigationBar
        self.title = titleForNavigationBar
    }
    
    func determineMyDeviceOrientation()
    {
        if UIDevice.current.orientation.isLandscape {
            print("Device is in landscape mode")
            collectionView.reloadData()
        } else {
            print("Device is in portrait mode")
        }
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        determineMyDeviceOrientation()
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
        cell.configure(imageName: Storage.allUsers[idUserNameFromFriendView].photo[indexPath.row].fileName)
        return cell
    }
}

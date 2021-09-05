//
//  UserProfileView2.swift
//  VKApp
//
//  Created by Boris Sobolev on 25.08.2021.
//

import UIKit

class UserProfileView: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet var tableView: UITableView!
    @IBOutlet var collectionView: UICollectionView!
    @IBOutlet var avatarImageOutlet: UIImageView!
    @IBOutlet var fullnameLabelOutlet: UILabel!
    @IBOutlet var locationLabelOutlet: UILabel!
    @IBOutlet var sendMessageButtonOutlet: UIButton!
    @IBOutlet var followButtonOutlet: UIButton!
    
    
    var userNameFromOtherView = String()
    var userIndex = 0
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        FeedStorage.getPostsForUsername(username: userNameFromOtherView).count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: ProfileWallTableViewCell.identifier, for: indexPath) as! ProfileWallTableViewCell
        cell.configure(postModel: FeedStorage.getPostsForUsername(username: userNameFromOtherView)[indexPath.row], userModel: Storage.allUsers[UserStorage.getIndexByUsername(username: userNameFromOtherView)])
        cell.likeTapped = {
            //dummy for write data
        }
        cell.controlTapped = { [weak self] in
            self?.performSegue(withIdentifier: "ShowFullScreenMedia", sender: indexPath)}
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
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        tableView.delegate = self
        tableView.dataSource = self
        userIndex = UserStorage.getIndexByUsername(username: userNameFromOtherView)
        let user = Storage.allUsers[userIndex]
        avatarImageOutlet.image = UIImage(named: user.avatar)
        avatarImageOutlet.layer.cornerRadius = 80
        avatarImageOutlet.layer.borderWidth = 1
        avatarImageOutlet.layer.borderColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        avatarImageOutlet.layer.borderColor = customColor.cgColor
        fullnameLabelOutlet.text = user.fullName
        locationLabelOutlet.text = "Location: " + user.location
        sendMessageButtonOutlet.layer.cornerRadius = 8
        followButtonOutlet.layer.cornerRadius = 8
        self.title = "id: \(userNameFromOtherView)"
        setSingleTap()
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if  segue.identifier == "ShowUserPhotos",
            let destination = segue.destination as? PhotosViewController
        {
            destination.userNameFromOtherView = userNameFromOtherView
        } else if segue.identifier == "ShowFullScreenPhotos",
                  let destination = segue.destination as? FullScreenViewController
        {
            destination.photosFromOtherView = [PhotoModel(name: "\(Storage.allUsers[userIndex].avatar)", fileName: "\(Storage.allUsers[userIndex].avatar)", likeCount: 0, commentMessages: [], isLike: false)]
            destination.selectedPhoto = 0
        } else if segue.identifier == "ShowFullScreenMedia",
                  let destination = segue.destination as? FullScreenViewController, let indexPath = sender as? IndexPath
        {
            destination.photosFromOtherView = [PhotoModel(name: "\(FeedStorage.getPostsForUsername(username: userNameFromOtherView)[indexPath.row].media)", fileName: "\(FeedStorage.getPostsForUsername(username: userNameFromOtherView)[indexPath.row].media)", likeCount: 0, commentMessages: [], isLike: false)]
            destination.selectedPhoto = 0
        }
        
        
        //ShowFullScreenMedia
    }
    
    // var x = 0
    @objc func tappedImage() {
        var x = 0
        while x < 3 {
            UIView.animateKeyframes(
                withDuration: 0.3,
                delay: 0,
                options: [],
                animations: {
                    UIView.addKeyframe(withRelativeStartTime: 0,
                                       relativeDuration: 0.5,
                                       animations: {
                                        //self.avatarImageOutlet.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                                        self.avatarImageOutlet.alpha = 0
                                        print("1")
                                       })
                    UIView.addKeyframe(withRelativeStartTime: 0.5,
                                       relativeDuration: 0.6,
                                       animations: {
                                        //self.avatarImageOutlet.transform = .identity
                                        self.avatarImageOutlet.alpha = 1
                                        print("2")
                                       })
                },
                completion: {_ in
                    x = x + 1
                    self.tappedImage()
                }
            )
        }
        x = x + 1
    }
    
    func setSingleTap() {
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleSingleTap))
        singleTap.numberOfTapsRequired = 1
        avatarImageOutlet.addGestureRecognizer(singleTap)
    }
    
    @IBAction func handleSingleTap(sender: UITapGestureRecognizer) {
        print("tap on avatar")
        performSegue(withIdentifier: "ShowFullScreenPhotos", sender: nil)
    }
}

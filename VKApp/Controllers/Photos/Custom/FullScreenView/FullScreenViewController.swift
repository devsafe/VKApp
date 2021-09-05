//
//  FullScreenViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 05.09.2021.
//

import UIKit

class FullScreenViewController: UIViewController {

   
    @IBOutlet var fullScreenView: FullScreenView!
    
    var bigTappedVC: ((Int) -> IndexPath)?
    var bigPhotoes: [PhotoModel] = []
    var sourceIndexPath: IndexPath = IndexPath()
    
    var photosFromOtherView = [PhotoModel]()
    var selectedPhoto = Int()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(photosFromOtherView, "photoes fromotherview")
        fullScreenView.photoes = photosFromOtherView.map({$0.fileName})
        fullScreenView.visibleIndex = selectedPhoto
        fullScreenView.namePhoto = photosFromOtherView.map({$0.name})
        tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        setSingleTap()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationController?.navigationBar.isHidden = false
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        view.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    func setSingleTap() {
    let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleSingleTap))
        singleTap.numberOfTapsRequired = 1
    view.addGestureRecognizer(singleTap)
    }
    
    @objc func handleSingleTap() {
        print("single tap")
        tabBarController?.tabBar.isHidden.toggle()
        navigationController?.navigationBar.isHidden.toggle()
     }
}

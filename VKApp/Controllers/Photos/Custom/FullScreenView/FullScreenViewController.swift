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
    
    var photosFromOtherView = [Photo]()
    var selectedPhoto = Int()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fullScreenView.photoes = photosFromOtherView.map({$0.sizes.last?.url as! String})
        fullScreenView.visibleIndex = selectedPhoto
        fullScreenView.namePhoto = photosFromOtherView.map({$0.sizes.last?.url as! String})
        tabBarController?.tabBar.isHidden = true
        navigationController?.navigationBar.isHidden = true
        setSingleTap()
    }
    
    override func viewWillAppear(_ animated: Bool) {
           super.viewWillAppear(animated)
//        //view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
//        view.transform = CGAffineTransform(translationX: 0, y: 0)
//          // view.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
//           UIView.animate(withDuration: 2.5, animations: { [weak self] in
//               self?.view.transform = CGAffineTransform.identity
//           })
       }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        tabBarController?.tabBar.isHidden = false
        navigationController?.navigationBar.isHidden = false
        
        
        view.transform = CGAffineTransform.identity
        UIView.animate(withDuration: 0.5, animations: { [weak self] in
            self?.view.transform = CGAffineTransform(scaleX: 0.00001, y: 0.00001)
        })
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        view.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    func setSingleTap() {
        let singleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleSingleTap))
        singleTap.numberOfTapsRequired = 1
        let fakeDoubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.fakeDoubleTap))
        singleTap.numberOfTapsRequired = 1
        fakeDoubleTap.numberOfTapsRequired = 2
        singleTap.require(toFail: fakeDoubleTap)
        singleTap.delaysTouchesBegan = true
        fakeDoubleTap.delaysTouchesBegan = true
        view.addGestureRecognizer(singleTap)
        view.addGestureRecognizer(fakeDoubleTap)
    }
    
    @objc func handleSingleTap() {
        tabBarController?.tabBar.isHidden.toggle()
        navigationController?.navigationBar.isHidden.toggle()
    }
    
    @objc func fakeDoubleTap() {
    }
}

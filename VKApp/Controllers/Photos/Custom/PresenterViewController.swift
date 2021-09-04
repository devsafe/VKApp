//
//  PresenterViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 31.08.2021.
//

import UIKit

class PresenterViewController: UIViewController {
    
    var photosFromOtherView = [PhotoModel]()
    var selectedPhoto = 0
    
    var leftImageView: UIImageView!
    var middleImageView: UIImageView!
    var rightImageView: UIImageView!
    
    var swipeToRight: UIViewPropertyAnimator!
    var swipeToLeft: UIViewPropertyAnimator!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = #colorLiteral(red: 0.1794480681, green: 0.1929571033, blue: 0.2130343616, alpha: 1)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        let gestPan = UIPanGestureRecognizer(target: self, action: #selector(onPan(_:)))
        view.addGestureRecognizer(gestPan)
        setImage()
        startAnimate()
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        view.subviews.forEach({ $0.removeFromSuperview() })
    }
    
    func setImage(){
        var indexPhotoLeft = selectedPhoto - 1
        let indexPhotoMid = selectedPhoto
        var indexPhotoRight = selectedPhoto + 1
        
        if indexPhotoLeft < 0 {
            indexPhotoLeft = photosFromOtherView.count - 1
            
        }
        if indexPhotoRight > photosFromOtherView.count - 1 {
            indexPhotoRight = 0
        }
        view.subviews.forEach({ $0.removeFromSuperview() })
        leftImageView = UIImageView()
        middleImageView = UIImageView()
        rightImageView = UIImageView()
        
        leftImageView.contentMode = .scaleAspectFit
        middleImageView.contentMode = .scaleAspectFit
        rightImageView.contentMode = .scaleAspectFit
        
        view.addSubview(leftImageView)
        view.addSubview(middleImageView)
        view.addSubview(rightImageView)
        
        leftImageView.translatesAutoresizingMaskIntoConstraints = false
        middleImageView.translatesAutoresizingMaskIntoConstraints = false
        rightImageView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            middleImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            middleImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            middleImageView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 0),
            middleImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            
            leftImageView.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0),
            leftImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            leftImageView.heightAnchor.constraint(equalTo: middleImageView.heightAnchor),
            leftImageView.widthAnchor.constraint(equalTo: middleImageView.widthAnchor),
            
            rightImageView.leadingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0),
            rightImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            rightImageView.heightAnchor.constraint(equalTo: middleImageView.heightAnchor),
            rightImageView.widthAnchor.constraint(equalTo: middleImageView.widthAnchor),
        ])
        
        leftImageView.image = UIImage(named: photosFromOtherView[indexPhotoLeft].fileName)
        middleImageView.image = UIImage(named: photosFromOtherView[indexPhotoMid].fileName)
        rightImageView.image = UIImage(named: photosFromOtherView[indexPhotoRight].fileName)
        
        middleImageView.layer.cornerRadius = 8
        rightImageView.layer.cornerRadius = 8
        leftImageView.layer.cornerRadius = 8
        
        middleImageView.clipsToBounds = true
        rightImageView.clipsToBounds = true
        leftImageView.clipsToBounds = true
        
        let scale = CGAffineTransform(scaleX: 0.8, y: 0.8)
        
        self.middleImageView.transform = scale
        self.rightImageView.transform = scale
        self.leftImageView.transform = scale
        
    }
    
    func startAnimate(){
        setImage()
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            options: [],
            animations: { [unowned self] in
                self.middleImageView.transform = .identity
                self.rightImageView.transform = .identity
                self.leftImageView.transform = .identity
            })
    }
    
    func revertAnimate(){
        setImage()
        UIView.animate(
            withDuration: 0.3,
            delay: 0,
            options: [],
            animations: { [unowned self] in
                self.middleImageView.transform = .identity
                self.rightImageView.transform = .identity
                self.leftImageView.transform = .identity
            })
    }
    
    @objc func onPan(_ recognizer: UIPanGestureRecognizer) {
        switch recognizer.state {
        case .began:
            swipeToRight = UIViewPropertyAnimator(
                duration: 0.3,
                curve: .easeInOut,
                animations: {
                    UIView.animate(
                        withDuration: 0.01,
                        delay: 0,
                        options: [],
                        animations: { [unowned self] in
                            let scale = CGAffineTransform(scaleX: 0.8, y: 0.8)
                            let translation = CGAffineTransform(translationX: self.view.bounds.maxX - 0, y: 0)
                            let transform = scale.concatenating(translation)
                            self.middleImageView.transform = transform
                            self.rightImageView.transform = transform
                            self.leftImageView.transform = transform
                        }, completion: { [unowned self] _ in
                            self.selectedPhoto -= 1
                            if self.selectedPhoto < 0 {
                                self.selectedPhoto = self.photosFromOtherView.count - 1
                            }
                            self.startAnimate()
                        })
                })
            swipeToLeft = UIViewPropertyAnimator(
                duration: 0.3,
                curve: .easeInOut,
                animations: {
                    UIView.animate(
                        withDuration: 0.01,
                        delay: 0,
                        options: [],
                        animations: { [unowned self] in
                            let scale = CGAffineTransform(scaleX: 0.8, y: 0.8)
                            let translation = CGAffineTransform(translationX: -self.view.bounds.maxX + 0, y: 0)
                            let transform = scale.concatenating(translation)
                            self.middleImageView.transform = transform
                            self.rightImageView.transform = transform
                            self.leftImageView.transform = transform
                        }, completion: { [unowned self] _ in
                            self.selectedPhoto += 1
                            if self.selectedPhoto > self.photosFromOtherView.count - 1 {
                                self.selectedPhoto = 0
                            }
                            self.startAnimate()
                        })
                })
        case .changed:
            let translationX = recognizer.translation(in: self.view).x
            if translationX > 2 {
                    swipeToRight.fractionComplete = abs(translationX)/100
            } else if translationX < -2 {
                swipeToLeft.fractionComplete = abs(translationX)/100
                print(translationX)
            } else {
                print("-2 - +2")
                swipeToRight.isReversed = !swipeToRight.isReversed
                //swipeToLeft.stopAnimation(true)
                //break
            }
            
        case .ended:
            swipeToRight.continueAnimation(withTimingParameters: nil, durationFactor: 0)
            //swipeToLeft.fractionComplete = 0
                        swipeToLeft.continueAnimation(withTimingParameters: nil, durationFactor: 0)
            
        default:
            return
        }
    }
}

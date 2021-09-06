//
//  FullScreenView.swift
//  VKApp
//
//  Created by Boris Sobolev on 05.09.2021.
//

import UIKit

class FullScreenView: UIView {
    
    private var leftView: UIImageView = {
        let leftView = UIImageView()
        leftView.isHidden = true
        leftView.translatesAutoresizingMaskIntoConstraints = false
        leftView.contentMode = .scaleAspectFit
        return leftView
    }()
    private var visibleView: UIImageView = {
        let visibleView = UIImageView()
        visibleView.translatesAutoresizingMaskIntoConstraints = false
        visibleView.contentMode = .scaleAspectFit
        return visibleView
    }()
    private var rightView: UIImageView = {
        let rightView = UIImageView()
        rightView.isHidden = true
        rightView.translatesAutoresizingMaskIntoConstraints = false
        rightView.contentMode = .scaleAspectFit
        return rightView
    }()
    private var nameLabel: UILabel = {
        let nameLabel = UILabel()
        nameLabel.text = ""
        nameLabel.textAlignment = .center
        nameLabel.font = UIFont.boldSystemFont(ofSize: 17)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        return nameLabel
    }()
    private var likeControl: UIImageView = {
        let likeControl = UIImageView()
        likeControl.image = UIImage(systemName: "heart.fill")
        likeControl.tintColor = .white
        likeControl.backgroundColor = UIColor.clear
        likeControl.alpha = 0
        likeControl.translatesAutoresizingMaskIntoConstraints = false
        return likeControl
    }()
    private var panGesture: UIPanGestureRecognizer?
    private var beginCenterXVisibleView: CGFloat = 0
    private var beginCenterXRightView: CGFloat = 0
    private var beginCenterXLeftView: CGFloat = 0
    private let scale = CGAffineTransform(scaleX: 0.95, y: 0.95)
    
    var namePhoto: [String] = []
    var photoes: [String] = []
    var visibleIndex: Int = 0
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setViews()
        setGesture()
        setDoubleTap()
        
        setPhotos()
        beginCenterXVisibleView = visibleView.center.x
        beginCenterXRightView = rightView.center.x
        beginCenterXLeftView = leftView.center.x
        
    }
    
    private func setViews() {
        addSubview(leftView)
        addSubview(rightView)
        addSubview(visibleView)
        addSubview(nameLabel)
        addSubview(likeControl)
        
        visibleView.frame = self.bounds
        
        NSLayoutConstraint.activate([
            visibleView.widthAnchor.constraint(equalTo: self.widthAnchor),
            visibleView.heightAnchor.constraint(equalTo: self.widthAnchor),
            visibleView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            visibleView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            
            leftView.widthAnchor.constraint(equalTo: self.widthAnchor),
            leftView.heightAnchor.constraint(equalTo: self.widthAnchor),
            leftView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            leftView.trailingAnchor.constraint(equalTo: visibleView.leadingAnchor, constant: -150),
            
            rightView.widthAnchor.constraint(equalTo: self.widthAnchor),
            rightView.heightAnchor.constraint(equalTo: self.widthAnchor),
            rightView.centerYAnchor.constraint(equalTo: self.centerYAnchor),
            rightView.leadingAnchor.constraint(equalTo: visibleView.trailingAnchor, constant: 150),
            
            nameLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 50),
            nameLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            nameLabel.heightAnchor.constraint(equalToConstant: 40),
            nameLabel.widthAnchor.constraint(equalToConstant: 370),
            
            likeControl.centerYAnchor.constraint(equalTo: visibleView.centerYAnchor),
            likeControl.centerXAnchor.constraint(equalTo: visibleView.centerXAnchor),
            likeControl.heightAnchor.constraint(equalToConstant: 100),
            likeControl.widthAnchor.constraint(equalToConstant: 130),
        ])
    }
    
    private func setGesture() {
        panGesture = UIPanGestureRecognizer(target: self, action: #selector(handlePan(recognizer:)))
        guard let gesture = panGesture else {
            print("panGesture is not initial")
            return
        }
        visibleView.addGestureRecognizer(gesture)
    }
    
    private func setPhotos() {
        guard
            !photoes.isEmpty,
            photoes.count > visibleIndex && visibleIndex >= 0
        else {
            print("Error index for visible view")
            return
        }
        visibleView.image = UIImage(named: photoes[visibleIndex])
        leftView.image = photoes.count > 1 ? UIImage(named: photoes[earlyIndex()]) : nil
        rightView.image = photoes.count > 1 ? UIImage(named: photoes[nextIndex()]) : nil
        nameLabel.text = namePhoto[visibleIndex]
        visibleView.isUserInteractionEnabled = true
    }
    
    @IBAction private func handlePan(recognizer: UIPanGestureRecognizer) {
        let translation = recognizer.translation(in: self.visibleView)
        if let visibleViewRecogniser = recognizer.view {
            visibleViewRecogniser.center.x = visibleViewRecogniser.center.x + translation.x
            leftView.center.x = leftView.center.x + translation.x
            rightView.center.x = rightView.center.x + translation.x
            
            rightView.isHidden = false
            leftView.isHidden = false
            
            firstTransformAnimate()
        }
        recognizer.setTranslation(.zero, in: self.visibleView)
        if recognizer.state == .ended {
            let offset = beginCenterXVisibleView - visibleView.center.x
            if offset > 100 && photoes.count > 1 {
                startAnimate(.left)
            } else if offset < -100 && photoes.count > 1 {
                startAnimate(.right)
            } else {
                startAnimate(.revert)
            }
        }
    }
    
    func setDoubleTap() {
        let doubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(self.handleDoubleTap))
        doubleTap.numberOfTapsRequired = 2
        doubleTap.delaysTouchesBegan = true
        self.visibleView.addGestureRecognizer(doubleTap)
    }
    
    @objc func handleDoubleTap() {
        likeAnimation()
    }
    
    private func nextIndex() -> Int {
        let lastIndex = photoes.count - 1
        if lastIndex == visibleIndex {
            return 0
        } else {
            return visibleIndex + 1
        }
    }
    
    private func earlyIndex() -> Int {
        let lastIndex = photoes.count - 1
        if visibleIndex == 0 {
            return lastIndex
        } else {
            return visibleIndex - 1
        }
    }
    
    enum DirectionAnimation {
        case left
        case right
        case revert
    }
    
    private func startAnimate(_ direction: DirectionAnimation) {
        visibleView.isUserInteractionEnabled = false
        self.leftView.isHidden = false
        self.rightView.isHidden = false
        UIView.animate(withDuration: 0.3) {
            switch direction {
            case .revert:
                self.visibleView.center.x = self.beginCenterXVisibleView
                self.leftView.center.x = self.beginCenterXLeftView
                self.rightView.center.x = self.beginCenterXRightView
            case .left:
                self.visibleView.center.x = self.beginCenterXLeftView
                self.rightView.center.x = self.beginCenterXVisibleView
                self.visibleIndex = self.nextIndex()
            case .right:
                self.visibleView.center.x = self.beginCenterXRightView
                self.leftView.center.x = self.beginCenterXVisibleView
                self.visibleIndex = self.earlyIndex()
            }
        } completion: { _ in
            self.transformAnimate()
            self.visibleView.center.x = self.beginCenterXVisibleView
            self.leftView.center.x = self.beginCenterXLeftView
            self.rightView.center.x = self.beginCenterXRightView
            self.leftView.isHidden = true
            self.rightView.isHidden = true
            self.setPhotos()
        }
    }
    
    private func transformAnimate() {
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: [.curveEaseOut,],
            animations: { [unowned self] in
                self.visibleView.transform = .identity
                self.rightView.transform = .identity
                self.leftView.transform = .identity
                if self.nameLabel.alpha == 0 {
                    self.nameLabel.alpha = 1
                } else {
                    self.nameLabel.alpha = 0
                }
            }, completion: { _ in
                self.visibleView.isUserInteractionEnabled = true
                self.nameLabel.alpha = 1
                self.labelAlphaAnimate()
            })
    }
    
    private func firstTransformAnimate() {
        UIView.animate(
            withDuration: 0.2,
            delay: 0,
            options: [.curveEaseOut,],
            animations: { [unowned self] in
                visibleView.transform = scale
                rightView.transform = scale
                leftView.transform = scale
            }, completion: nil )
    }
    
    private func labelAlphaAnimate() {
        UIView.animate(
            withDuration: 1,
            delay: 3,
            options: [.curveEaseOut,],
            animations: { [unowned self] in
                self.nameLabel.alpha = 0
                
            })
    }
    
    private func likeAnimation() {
        UIView.animateKeyframes(
            withDuration: 0.8,
            delay: 0,
            options: [],
            animations: {
                UIView.addKeyframe(withRelativeStartTime: 0,
                                   relativeDuration: 1/10,
                                   animations: {
                                    self.likeControl.transform = CGAffineTransform(scaleX: 0.9, y: 0.9)
                                    self.likeControl.alpha = 0.9
                                   })
                UIView.addKeyframe(withRelativeStartTime: 1/2,
                                   relativeDuration: 1/2,
                                   animations: {
                                    self.likeControl.alpha = 0
                                    self.likeControl.transform = .identity
                                   })
            },
            completion: nil
        )
    }
}

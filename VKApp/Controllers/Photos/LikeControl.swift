//
//  LikeControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 17.08.2021.
//

import UIKit

final class LikeControl: UIControl {
    private var isLiked = false
    var controlTapped: (() -> Void)?
    private var likeButton = UIButton()
    private var likeCountLabel = UILabel()
    private var likeCounter: Int = 0
    
    private let unlikedScale: CGFloat = 0.7
    private let likedScale: CGFloat = 1.4
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        self.setView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        likeButton.frame = bounds
    }
    
    private func setView() {
        self.addSubview(likeButton)
        self.addSubview(likeCountLabel)
        self.likeButton.addTarget(self, action: #selector(tapControl(_:)), for: .touchUpInside)
        likeButton.tintColor = UIColor.systemBlue
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 26, weight: .thin, scale: .default)
        likeButton.setImage(UIImage(systemName: "heart", withConfiguration: largeConfig), for: .normal)
        likeButton.setImage(UIImage(systemName: "heart.fill", withConfiguration: largeConfig), for: .selected)
        backgroundColor = .clear
        likeCountLabel.textColor = UIColor.systemBlue
        likeCountLabel.translatesAutoresizingMaskIntoConstraints = false
        likeCountLabel.trailingAnchor.constraint(equalTo: likeButton.leadingAnchor, constant: -2).isActive = true
        likeCountLabel.centerYAnchor.constraint(equalTo: likeButton.centerYAnchor).isActive = true
        
    }
    
    func configure(isLike: Bool, likeCount: Int) {
        likeCountLabel.text = String(likeCount)
        likeButton.isSelected = isLike
        likeCounter = likeCount
    }
    
    @objc func tapControl(_ sender: UIButton) {
        controlTapped?()
        if likeButton.isSelected {
            likeCounter -= 1
            likeButton.isSelected = false
        } else {
            likeCounter += 1
            likeButton.isSelected = true
        }
       animatedLabel(likeCount: likeCounter)
        animate()
        
    }
    
    private func animatedLabel(likeCount: Int) {
        UIView.transition(with: likeCountLabel,
                          duration: 0.7,
                          options: .transitionFlipFromRight,
                          animations: { [unowned self] in
                            self.likeCountLabel.text = String(likeCount)}
        )
    }
    
    private func animate() {
        UIButton.animate(withDuration: 0.1, animations: { [self] in
        let newScale = likeButton.isSelected ? self.likedScale : self.unlikedScale
            likeButton.transform = self.transform.scaledBy(x: newScale, y: newScale)
      }, completion: { _ in
        UIButton.animate(withDuration: 0.2, animations: { [self] in
          likeButton.transform = CGAffineTransform.identity
        })
      })
    }
    
}

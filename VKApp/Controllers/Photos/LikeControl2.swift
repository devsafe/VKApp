//
//  LikeControl2.swift
//  VKApp
//
//  Created by Boris Sobolev on 17.08.2021.
//

import UIKit

final class LikeControl2: UIControl {
    
    var controlTapped: (() -> Void)?
    private var likeButton = UIButton()
    private var likeCountLabel = UILabel()
    private var likeCounter: Int = 0
    
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
        likeButton.tintColor = UIColor.red
        likeButton.setImage(UIImage(systemName: "heart"), for: .normal)
        likeButton.setImage(UIImage(systemName: "heart.fill"), for: .selected)
        likeCountLabel.textColor = UIColor.red
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
        animatedLabel(likeCount: likeCounter)
    }
    
    private func animatedLabel(likeCount: Int) {
        UIView.transition(with: likeCountLabel,
                          duration: 0.2,
                          options: .transitionFlipFromTop,
                          animations: { [unowned self] in
                            self.likeCountLabel.text = String(likeCount)}
        )
    }
    
}

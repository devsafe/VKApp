//
//  ShareControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

final class ShareControl: UIControl {
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
        backgroundColor = .clear
    }
    
    private func setView() {
        self.addSubview(likeButton)
        self.addSubview(likeCountLabel)
        self.likeButton.addTarget(self, action: #selector(tapControl(_:)), for: .touchUpInside)
        likeButton.tintColor = UIColor.systemBlue
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 26, weight: .regular, scale: .default)
        let blueHeart = UIImage(systemName: "arrowshape.turn.up.forward", withConfiguration: largeConfig)?.withTintColor(#colorLiteral(red: 0.01734360866, green: 0.4780374765, blue: 1, alpha: 0.6994547772), renderingMode: .alwaysOriginal)
        let redHeart = UIImage(systemName: "arrowshape.turn.up.forward.fill", withConfiguration: largeConfig)?.withTintColor(.systemBlue, renderingMode: .alwaysOriginal)
        likeButton.setImage(blueHeart, for: .normal)
        likeButton.setImage(redHeart, for: .selected)
        backgroundColor = .clear
        likeCountLabel.textColor = #colorLiteral(red: 0.01734360866, green: 0.4780374765, blue: 1, alpha: 0.6994547772)
        likeCountLabel.translatesAutoresizingMaskIntoConstraints = false
        likeCountLabel.trailingAnchor.constraint(equalTo: likeButton.centerXAnchor, constant: 28).isActive = true
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
                          options: .allowAnimatedContent,
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

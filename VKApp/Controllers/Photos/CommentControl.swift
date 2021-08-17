//
//  LikeControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 16.08.2021.
//

import UIKit

final class CommentControl: UIControl {
    
    var controlTapped: (() -> Void)?
    private var commentButton = UIButton()
    private var commentCountLabel = UILabel()
    private var commentCounter: Int = 0
    
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
        commentButton.frame = bounds
    }
    
    private func setView() {
        self.addSubview(commentButton)
        self.addSubview(commentCountLabel)
        self.commentButton.addTarget(self, action: #selector(tapControl(_:)), for: .touchUpInside)
        commentButton.tintColor = UIColor.systemBlue
        commentButton.setImage(UIImage(systemName: "bubble.left"), for: .normal)
        commentButton.setImage(UIImage(systemName: "bubble.left"), for: .selected)
        commentCountLabel.textColor = UIColor.systemBlue
        commentCountLabel.translatesAutoresizingMaskIntoConstraints = false
        commentCountLabel.trailingAnchor.constraint(equalTo: commentButton.leadingAnchor, constant: -2).isActive = true
        commentCountLabel.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor).isActive = true
        
    }
    
    func configure(commentCount: Int) {
        commentCountLabel.text = String(commentCount)
        commentCounter = commentCount
    }
    
    @objc func tapControl(_ sender: UIButton) {
        controlTapped?()
       // animatedLabel(commentCount: commentCounter)
    }
    
    private func animatedLabel(commentCount: Int) {
        UIView.transition(with: commentCountLabel,
                          duration: 0.2,
                          options: .transitionFlipFromTop,
                          animations: { [unowned self] in
                            self.commentCountLabel.text = String(commentCount)}
        )
    }
    
}

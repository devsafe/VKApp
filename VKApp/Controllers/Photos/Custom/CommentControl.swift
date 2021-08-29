//
//  CommentControl.swift
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
    
    private let uncommentScale: CGFloat = 0.7
    private let commentScale: CGFloat = 1.4
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.setView()
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        commentButton.frame = bounds
        backgroundColor = .clear
    }
    
    private func setView() {
        self.addSubview(commentButton)
        self.addSubview(commentCountLabel)
        self.commentButton.addTarget(self, action: #selector(tapControl(_:)), for: .touchUpInside)
        commentButton.tintColor = #colorLiteral(red: 0.01734360866, green: 0.4780374765, blue: 1, alpha: 0.6994547772)
        let largeConfig = UIImage.SymbolConfiguration(pointSize: 26, weight: .regular, scale: .default)
        commentButton.setImage(UIImage(systemName: "bubble.left", withConfiguration: largeConfig), for: .normal)
        commentButton.setImage(UIImage(systemName: "bubble.left", withConfiguration: largeConfig), for: .selected)
        commentCountLabel.textColor = #colorLiteral(red: 0.01734360866, green: 0.4780374765, blue: 1, alpha: 0.6994547772)
        commentCountLabel.translatesAutoresizingMaskIntoConstraints = false
        commentCountLabel.trailingAnchor.constraint(equalTo: commentButton.centerXAnchor, constant: -20).isActive = true
        commentCountLabel.centerYAnchor.constraint(equalTo: commentButton.centerYAnchor).isActive = true
    }
    
    func configure(commentCount: Int) {
        commentCountLabel.text = String(commentCount)
        commentCounter = commentCount
    }
    
    @objc func tapControl(_ sender: UIButton) {
        controlTapped?()
        animatedLabel(commentCount: commentCounter)
        animate()
        commentAlert()
    }
    
    private func animatedLabel(commentCount: Int) {
        UIView.transition(with: commentCountLabel,
                          duration: 0.2,
                          options: .allowAnimatedContent,
                          animations: { [unowned self] in
                            self.commentCountLabel.text = String(commentCount)}
        )
    }
    private func animate() {
        UIButton.animate(withDuration: 0.1, animations: { [self] in
            let newScale = commentButton.isSelected ? self.commentScale : self.uncommentScale
            commentButton.transform = self.transform.scaledBy(x: newScale, y: newScale)
        }, completion: { _ in
            UIButton.animate(withDuration: 0.2, animations: { [self] in
                commentButton.transform = CGAffineTransform.identity
            })
        })
    }
    
    func commentAlert() {
        let commentAlert = UIAlertController(
            title: "Comment",
            message: "Type your comment:", preferredStyle: .alert)
        commentAlert.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        commentAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Location"
        })
        commentAlert.textFields![0].text = ""
    }
}

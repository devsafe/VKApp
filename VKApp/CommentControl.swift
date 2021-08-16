//
//  LikeControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 16.08.2021.
//

import UIKit

class CommentControl: UIControl {
    
    
    var imageView = UIImageView()
    var commentCountLabel = UILabel()
    
    var commentCounter = Storage.allUsers[0].photo.count
    var isLike: Bool = false
    
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
        
        imageView.frame = bounds
    }
    
    func setLike(count: Int){
        commentCounter = count
        setLikeCounterLabel()
    }
    func setView() {
        
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        
        imageView.tintColor = .systemBlue
        imageView.image = UIImage(systemName: "bubble.left")
        
        setLikeCounterLabel()
    }
    func setLikeCounterLabel(){
        addSubview(commentCountLabel)
        let likeString: String?
        
        switch commentCounter {
        case 0..<1000:
            likeString = String(self.commentCounter)
        case 1000..<1_000_000:
            likeString = String(self.commentCounter/1000) + "K"
        default:
            likeString = "-"
        }
        UIView.transition(with: commentCountLabel,
                          duration: 0.3,
                          options: .transitionFlipFromLeft,
                          animations: { [unowned self] in
                        self.commentCountLabel.text = String(likeString!)
        })
             commentCountLabel.textColor = .systemBlue
             commentCountLabel.translatesAutoresizingMaskIntoConstraints = false
        
             commentCountLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -8).isActive = true
             commentCountLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
    
    @objc func tapControl(){
        isLike.toggle()
        if isLike {
            imageView.image = UIImage(systemName: "bubble.left")
            commentCounter += 1
            setLikeCounterLabel()
        } else {
            imageView.image = UIImage(systemName: "text.bubble")
            commentCounter -= 1
            setLikeCounterLabel()
        }
    }
    
}

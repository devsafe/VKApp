//
//  LikeControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 16.08.2021.
//

import UIKit

class LikeControl: UIControl {
    
    var controlTapped: (() -> Void)?
    var imageView = UIImageView()
    var likeCountLabel = UILabel()
    
    var likeCounter = Storage.allUsers[0].photo.count
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
        likeCounter = count
        setLikeCounterLabel()
    }
    func setView() {
        
        self.addSubview(imageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        
        imageView.tintColor = .systemBlue
        imageView.image = UIImage(systemName: "heart")
        
        setLikeCounterLabel()
    }
    func setLikeCounterLabel(){
        addSubview(likeCountLabel)
        let likeString: String?
        
        switch likeCounter {
        case 0..<1000:
            likeString = String(self.likeCounter)
        case 1000..<1_000_000:
            likeString = String(self.likeCounter/1000) + "K"
        default:
            likeString = "-"
        }
        UIView.transition(with: likeCountLabel,
                          duration: 0.3,
                          options: .transitionFlipFromLeft,
                          animations: { [unowned self] in
                        self.likeCountLabel.text = String(likeString!)
        })
        likeCountLabel.textColor = .systemBlue
             likeCountLabel.translatesAutoresizingMaskIntoConstraints = false
        
             likeCountLabel.trailingAnchor.constraint(equalTo: imageView.leadingAnchor, constant: -8).isActive = true
             likeCountLabel.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
    
    @objc func tapControl(){
        isLike.toggle()
        if isLike {
            imageView.image = UIImage(systemName: "heart.fill")
            likeCounter += 1
            setLikeCounterLabel()
        } else {
            imageView.image = UIImage(systemName: "heart")
            likeCounter -= 1
            setLikeCounterLabel()
        }
    }
    
    func configure(isLike: Bool, likeCount: Int) {
        likeCountLabel.text = String(likeCount)
        likeCounter = likeCount
    }
    
}

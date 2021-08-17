//
//  LikeControl.swift
//  VKApp
//
//  Created by Boris Sobolev on 16.08.2021.
//

import UIKit

class LikeControl: UIControl {
    
    var controlTapped: (() -> Void)?
    var likeButton = UIButton()
    var heartStateImageView = UIImageView()
    var likeCountLabel = UILabel()
    
    var likeCounter = Int()
   var isLike = Bool()
    
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
        
        heartStateImageView.frame = bounds
    }
    
    func setLike(count: Int){
        likeCounter = count
        setLikeCounterLabel()
    }
    func setView() {
        
        self.addSubview(heartStateImageView)
        self.addTarget(self, action: #selector(tapControl), for: .touchUpInside)
        
        heartStateImageView.tintColor = .systemPink
        heartStateImageView.image = UIImage(systemName: isLike == true ? "heart.fill" : "heart")
        
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
        
             likeCountLabel.trailingAnchor.constraint(equalTo: heartStateImageView.leadingAnchor, constant: -8).isActive = true
             likeCountLabel.centerYAnchor.constraint(equalTo: heartStateImageView.centerYAnchor).isActive = true
    }
    
    @objc func tapControl(){
        isLike.toggle()
        if isLike {
            heartStateImageView.image = UIImage(systemName: "heart.fill")
            likeCounter += 1
            //Тут?
            setLikeCounterLabel()
        } else {
            heartStateImageView.image = UIImage(systemName: "heart")
            likeCounter -= 1
            setLikeCounterLabel()
        }
    }
    
    func configure(isLike: Bool, likeCount: Int) {
        likeCountLabel.text = String(likeCount)
        likeCounter = likeCount
        self.isLike = isLike
    }
    
}

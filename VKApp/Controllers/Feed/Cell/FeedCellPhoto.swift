//
//  FeedCellPhoto.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.10.2021.
//

import UIKit

class FeedCellPhoto: UITableViewCell {
    
    static let reusedIdentifier = "FeedCellPhoto"
    @IBOutlet weak var postPhoto: UIImageView!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()

    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        postPhoto.image = nil
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        postPhoto.image = UIImage(named: postModel.media)
        
    }
    
    private func configureStatic() {
        
    }
}

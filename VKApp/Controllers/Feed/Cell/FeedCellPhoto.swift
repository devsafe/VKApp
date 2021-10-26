//
//  FeedCellPhoto.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.10.2021.
//

import UIKit

class FeedCellPhoto: UITableViewCell {
    
    static let reusedIdentifier = "FeedCellPhoto"
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()

    }
    
    override func prepareForReuse() {
        super.prepareForReuse()

    }
    
    func configure(postModel: PostModel, userModel: UserModel) {

        
    }
    
    private func configureStatic() {
        
    }
}

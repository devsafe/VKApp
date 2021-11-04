//
//  FeedCellText.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.10.2021.
//

import UIKit

class FeedCellText: UITableViewCell {
    
    static let reusedIdentifier = "FeedCellText"
    @IBOutlet weak var postTextLabel: UILabel!
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureStatic()

    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        postTextLabel.text = nil
    }
    
    func configure(postModel: PostModel, userModel: UserModel) {
        postTextLabel.text = postModel.text
        
    }
    
    private func configureStatic() {
        
    }
}

//
//  FeedTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

import UIKit

class FeedTableViewCell: UITableViewCell {
    
    static let identifier = "FeedTableViewCell"
    
    @IBOutlet var imageFeedCell: UIImageView!
    @IBOutlet var titleLableFeedCell: UILabel!
    @IBOutlet var dateLabelFeedCell: UILabel!
    @IBOutlet var avatarImageFeedCell: UIImageView!
    @IBOutlet var textLabelFeedCell: UILabel!
    @IBOutlet var authorLabelFeedCell: UILabel!
    
    func configure(image: String?, title: String) {
        imageFeedCell.image = UIImage(named: image ?? "logo-default")
        authorLabelFeedCell.text = title
        imageFeedCell.layer.cornerRadius = 8
        avatarImageFeedCell.layer.cornerRadius = 8
    }
}

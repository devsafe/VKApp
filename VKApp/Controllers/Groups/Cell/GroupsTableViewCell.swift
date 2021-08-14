//
//  GroupsTableViewCell.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.08.2021.
//

import UIKit

class GroupsTableViewCell: UITableViewCell {
    
    static let identifier = "GroupsTableViewCell"
    
    @IBOutlet private var labelChannelsCell: UILabel!
    @IBOutlet private var detailLabelChannelsCell: UILabel!
    @IBOutlet private var imageChannelsCell: UIImageView!
    @IBOutlet private var extraLabelChannelsCell: UILabel!
    
    func configure(imageName: String?, title: String, detail: String, extraLabel: String?) {
        imageChannelsCell.image = UIImage(named: imageName ?? "logo-default")
        labelChannelsCell.text = title
        detailLabelChannelsCell.text = detail + ""
        extraLabelChannelsCell?.text = extraLabel ?? ""
    }
}

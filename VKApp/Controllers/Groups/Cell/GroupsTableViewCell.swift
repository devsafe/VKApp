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
    @IBOutlet var favouritGroupImageCell: UIImageView?
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    func configure(imageName: String?, title: String, detail: String, extraLabel: String?, favouritImage: String) {
        imageChannelsCell.image = UIImage(named: imageName ?? "logo-default")
        labelChannelsCell.text = title
        detailLabelChannelsCell.text = detail + ""
        extraLabelChannelsCell?.text = extraLabel ?? ""
        favouritGroupImageCell?.image = UIImage(named: favouritImage)
        let tintableImage = favouritGroupImageCell?.image?.withRenderingMode(.alwaysTemplate)
        favouritGroupImageCell?.image = tintableImage
    }
    
    func configureCellStaticApperance() {
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
    }
}

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
    let networkService = NetworkService()
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.configureCellStaticApperance()
    }
    
    func configure(group: GroupsItems) {
        networkService.photoLoad(url: group.photo_100) { [weak self] result in
            guard let self = self else { return }
            switch result {
            case .success(let photo):
                self.imageChannelsCell.image = photo
            case .failure: print("ERROR")
            }
        }
        ///imageChannelsCell.image = UIImage(named: group.photo_100 ?? "logo-default")
        labelChannelsCell.text = group.name
        detailLabelChannelsCell.text = group.name + ""
        extraLabelChannelsCell?.text = group.name 
        favouritGroupImageCell?.image = UIImage(named: "favouritImage")
        let tintableImage = favouritGroupImageCell?.image?.withRenderingMode(.alwaysTemplate)
        favouritGroupImageCell?.image = tintableImage
    }
    
    func configureCellStaticApperance() {
        let bgColorView = UIView()
        bgColorView.backgroundColor = UIColor.clear
        selectedBackgroundView = bgColorView
    }
}

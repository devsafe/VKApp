//
//  AvatarView.swift
//  VKApp
//
//  Created by Boris Sobolev on 18.08.2021.
//

import UIKit

final class AvatarView: UIImageView {
    
    override func layoutSubviews() {
        self.layer.cornerRadius = 45
        let customColor : UIColor = UIColor( red: 1, green: 1, blue: 1, alpha: 0.2 )
        self.layer.borderColor = customColor.cgColor
        self.layer.shadowOffset = .zero
        self.layer.borderWidth = 1
    }
}



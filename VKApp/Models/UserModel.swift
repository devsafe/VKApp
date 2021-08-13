//
//  User.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

struct UserModel {
    var name: String?
    var surName: String?
    var userName: String
    var password: String
    var avatar: String?
    var favGroups: [GroupModel]?
    var photo: [PhotoModel]?
}

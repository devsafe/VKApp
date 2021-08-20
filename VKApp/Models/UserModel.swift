//
//  UserModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

struct UserModel {
    var userName: String
    var name: String
    var surName: String
    var fullName: String {
        return name + " " + surName
    }
    var password: String
    var avatar: String
    var location: String
    var favGroups: [GroupModel]
    var photo: [PhotoModel]
}

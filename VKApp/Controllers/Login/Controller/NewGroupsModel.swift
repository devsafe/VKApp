//
//  NewGroupsModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.09.2021.
//

import Foundation

struct GroupsResponseModel: Codable {
    let response: GroupResponse
}

struct GroupResponse: Codable {
    let count: Int
    let items: [GroupsItems]
}

struct GroupsItems: Codable {
    let id: Int
    let name: String
    let screen_name: String
    let description: String?
    let photo_100: String
    //let city: City?
   // let photo_100: String
}

//
//  FriendsResponseModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 25.09.2021.
//

import Foundation

struct FriendsResponseModel: Codable {
    let response: Response
}

struct Response: Codable {
    let count: Int
    let items: [FriendsItems]
}

struct FriendsItems: Codable {
    let id: Int
    let first_name: String
    let last_name: String
   // let city: City
    let photo_100: String
}

struct City: Codable {
    let id: Int
    let title: String
}


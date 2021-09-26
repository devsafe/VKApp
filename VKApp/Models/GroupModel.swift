//
//  GroupModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

struct GroupModel: Codable {
    let name: String
    let description: String
    let logo: String
    let fullDescription: String
    let subscribersCount: Int
}

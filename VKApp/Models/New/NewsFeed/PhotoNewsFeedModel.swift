//
//  PhotoNewsFeedModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 31.10.2021.
//

import Foundation

struct PhotoNews: Codable {
    let id: Int?
    let ownerID: Int?
    let sizes: [SizeNews]?
    
    enum CodingKeys: String, CodingKey {
        case id
        case ownerID = "owner_id"
        case sizes
    }
}
struct SizeNews: Codable {
    let type: String?
    let url: String?
}

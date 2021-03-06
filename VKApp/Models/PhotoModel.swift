//
//  PhotoModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

struct PhotoModel: Codable {
    let name: String
    let fileName: String
    var likeCount: Int
    var commentMessages: [String]
    var isLike: Bool {
        didSet {
            likeCount += isLike ? 1 : -1
        }
    }
}

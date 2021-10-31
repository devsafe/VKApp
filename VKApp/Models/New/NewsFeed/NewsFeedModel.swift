//
//  NewsFeedModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 31.10.2021.
//

import UIKit

struct NewsFeedModel: Codable {
    let postID: Int
    let text: String
    let date: Double
    let attachments: [Attachment]?
    let likes: LikeModel
    let comments: CommentModel
    let sourceID: Int
    var avatarURL: String?
    var creatorName: String?
    var photosURL: [String]? {
        get {
            let photosURL = attachments?.compactMap{ $0.photo?.sizes?.last?.url }
            return photosURL
        }
    }
    enum CodingKeys: String, CodingKey {
        case postID = "post_id"
        case text
        case date
        case likes
        case comments
        case attachments
        case sourceID = "source_id"
        case avatarURL
        case creatorName
    }
    
    func getStringDate() -> String {
        let dateFormatter = DateFormatterVK()
        return dateFormatter.convertDate(timeIntervalSince1970: date)
    }
    
}
struct Attachment: Codable {
    let type: String?
    let photo: PhotoNews?
}
struct LikeModel: Codable {
    let count: Int
}
struct CommentModel: Codable {
    let count: Int
}

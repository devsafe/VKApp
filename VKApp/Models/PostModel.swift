//
//  PostModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.08.2021.
//

struct PostModel {
    let author: [UserModel]
    let timeStamp: String
    var text: String
    var media: String
    var likeCount: Int
    var isLike: Bool {
        didSet {
            likeCount += isLike ? 1 : -1
        }
    }
}

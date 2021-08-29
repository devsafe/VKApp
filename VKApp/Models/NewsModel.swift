//
//  NewsModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.08.2021.
//

struct NewsModel {
    let author: GroupModel
    let timeStamp: String
    var text: String
    var media: String
    var likeCount: Int
    var commentMessages: [String]
    var isLike: Bool {
        didSet {
            likeCount += isLike ? 1 : -1
        }
    }
}

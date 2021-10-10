//
//  NewPhotoModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.09.2021.
//

import Foundation

struct PhotoResponseModel: Codable {
    let response: PhotoResponse
}

struct PhotoResponse: Codable {
    let count: Int
    let items: [PhotoItems]
}

struct PhotoItems: Codable {
    let id: Int
    //let photo_100: String
    let sizes: [Sizes]
  //
    //let city: City?
   // let photo_100: String
}


struct Sizes: Codable {
    let url: String
}

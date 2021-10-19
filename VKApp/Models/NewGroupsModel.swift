//
//  NewGroupsModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 19.10.2021.
//

import Foundation
import RealmSwift

class Group: Object, Codable {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    //@objc dynamic var groupDescription: String = ""
    @objc dynamic var groupLogo: String = ""
   //@objc dynamic var members_count: Int = 0
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
       //case groupDescription = "description"
        case groupLogo = "photo_100"
      // case members_count = "members_count"
    }
}

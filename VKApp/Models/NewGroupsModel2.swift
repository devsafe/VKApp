//
//  NewGroupsModel2.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.10.2021.
//

import Foundation
import RealmSwift


struct Groups: Codable {
    let response: GroupsResponse
}

struct GroupsResponse: Codable {
    let count: Int
    let items: [GroupsItems]
}

class GroupsItems: Object, Codable {
   @objc dynamic var id: Int = 0
   @objc dynamic var name: String = ""
   @objc dynamic var screen_name: String = ""
   @objc dynamic var is_closed: Int = 0
   @objc dynamic var type: String = ""
   @objc dynamic var is_admin: Int = 0
   @objc dynamic var is_member: Int = 0
   @objc dynamic var is_advertiser: Int = 0
   @objc dynamic var photo_50: String = ""
   @objc dynamic var photo_100: String = ""
   @objc dynamic var photo_200: String = ""
   @objc dynamic var descriptionGroup: String = ""
   @objc dynamic var members_count: Int = 0
    
    enum CodingKeys: String, CodingKey {
        case descriptionGroup = "description"
        case id = "id"
        case name = "name"
        case type = "type"
        case photo_100 = "photo_100"
        case members_count = "members_count"
        case screen_name = "screen_name"
        case is_closed = "is_closed"
        case is_admin = "is_admin"
        case is_member = "is_member"
        case is_advertiser = "is_advertiser"
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
}

//
//  NewGroupsModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 26.09.2021.
//

import Foundation
import RealmSwift

class Group: Object, Codable {
    @objc dynamic var id: Int = 0
    @objc dynamic var name: String = ""
    //@objc dynamic var groupDescription: String = ""
    @objc dynamic var groupLogo: String = ""
   @objc dynamic var members_count: Int = 0
    
    
    enum CodingKeys: String, CodingKey {
        case id = "id"
        case name = "name"
       //case groupDescription = "description"
        case groupLogo = "photo_100"
       case members_count = "members_count"
    }
    
    convenience required init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(Int.self, forKey: .id)
        
        self.name = try values.decode(String.self, forKey: .name)
        self.groupLogo = try values.decode(String.self, forKey: .groupLogo)
        
        do {
        self.members_count = try values.decode(Int.self, forKey: .members_count)
        }
        catch {
            self.members_count = 0
        }
        
        
        
    }
}

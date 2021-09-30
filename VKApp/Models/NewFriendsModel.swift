//
//  FriendsResponseModel.swift
//  VKApp
//
//  Created by Boris Sobolev on 25.09.2021.
//

import Foundation
import RealmSwift

class Friend: Object, Codable {
    @objc dynamic var id: Int = 0
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
    @objc dynamic var avatarURL: String = ""
    @objc dynamic var cityName: String = ""
    
    
    enum CodingKeys: String, CodingKey {
        case id
        case firstName = "first_name"
        case lastName = "last_name"
        case avatarURL = "photo_100"
        case cityName = "city"
    }
    
    enum CityKeys: String, CodingKey {
        case id
        case title
    }
    
    override static func primaryKey() -> String? {
        return "id"
    }
    
    override static func indexedProperties() -> [String] {
        return ["firstName", "lastName"]
    }
    
    convenience required init(from decoder: Decoder) throws {
        self.init()
        let values = try decoder.container(keyedBy: CodingKeys.self)
        self.id = try values.decode(Int.self, forKey: .id)
        self.firstName = try values.decode(String.self, forKey: .firstName)
        self.lastName = try values.decode(String.self, forKey: .lastName)
        self.avatarURL = try values.decode(String.self, forKey: .avatarURL)
        
        let cityValues = try values.nestedContainer(keyedBy: CityKeys.self, forKey: .cityName)
        self.cityName = try cityValues.decode(String.self, forKey: .title)
    }
}


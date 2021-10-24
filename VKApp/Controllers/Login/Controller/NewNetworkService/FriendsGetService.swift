//
//  FriendsGetService.swift
//  VKApp
//
//  Created by Boris Sobolev on 24.10.2021.
//

import Foundation
import Alamofire
import RealmSwift

enum FriendsServiceError: Error {
    case decodeError
    case notData
    case serverError
}

class FriendsGet {
    private let urlPath = "https://api.vk.com/method/friends.get"
    
    func getMyFriends(completion: @escaping (Result<[Friend], FriendsServiceError>) -> Void) {
        
        let params: Parameters = [
            "user_id": "\(String(UserSession.shared.userId))",
            //"extended": "1",
            "count": "22",
            "fields" : "city, photo_100",
            "access_token": "\(UserSession.shared.token)",
            "v": "5.81"
        ]
        
        AF.request(urlPath, method: .get, parameters: params).responseJSON { response in
            if let error = response.error {
                completion(.failure(.serverError))
                print(error)
            }
            guard response.data != nil else {
                completion(.failure(.notData))
                return
            }
            do {
                let responseFriends = try JSONDecoder().decode(Response<Friend>.self, from: response.data!)
                let friends = responseFriends.response.items
                self.saveFriendsData(friends)
                completion(.success(friends))
                print(response.value)
            } catch {
                completion(.failure(.decodeError))
                print(response.value)
            }
        }
    }
    
    func saveFriendsData(_ friends: [Friend]) {
        do {
            let config = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
            let realm = try Realm(configuration: config)
            let oldFriends = realm.objects(Friend.self)
            realm.beginWrite()
            realm.delete(oldFriends)
            realm.add(friends)
            print(realm.configuration.fileURL)
            try realm.commitWrite()
        } catch {
            print(error)
        }
    }
}

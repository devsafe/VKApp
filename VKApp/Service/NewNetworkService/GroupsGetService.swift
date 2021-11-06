//
//  GroupsGetService.swift
//  VKApp
//
//  Created by Boris Sobolev on 10.10.2021.
//

import Foundation
import Alamofire
import RealmSwift

enum GroupsServiceError: Error {
    case decodeError
    case notData
    case serverError
}

class GroupsGet {
    private let urlPath = "https://api.vk.com/method/groups.get"
    
    func getMyGroups(completion: @escaping (Result<[Group], GroupsServiceError>) -> Void) {
        
        let params: Parameters = [
            "owner_id": "\(String(UserSession.shared.userId))",
            "extended": "1",
            "count": "22",
            "fields": "description,members_count",
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
                let responseGroups = try JSONDecoder().decode(Response<Group>.self, from: response.data!)
                let groups = responseGroups.response.items
                self.saveGroupsData(groups)
                completion(.success(groups))
                print(response.value)
            } catch {
                completion(.failure(.decodeError))
                print(response.value)
            }
        }
    }
    
    func saveGroupsData(_ groups: [Group]) {
        do {
            let config = Realm.Configuration(deleteRealmIfMigrationNeeded: true)
            let realm = try Realm(configuration: config)
            let oldGroups = realm.objects(Group.self)
            realm.beginWrite()
            realm.delete(oldGroups)
            realm.add(groups)
            print(realm.configuration.fileURL)
            try realm.commitWrite()
        } catch {
            print(error)
            //error
        }
    }
}

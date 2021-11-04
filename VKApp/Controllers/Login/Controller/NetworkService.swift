//
//  NetworkService.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.09.2021.
//

import Foundation
import Alamofire
import UIKit

class NetworkService {
    let apiUrl = "https://api.vk.com/method/"
    let apiToken = UserSession.shared.token
    
    func friendsGet(user_id: Int, completion: @escaping (Result<[Friend], VKServiceError>) -> Void) {
        let method = "friends.get"
        let params: Parameters = [
            "user_id": user_id,
            "fields" : "city, photo_100",
            "lang" : "en",
            //"order": "name",
            "count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            guard let json = response.data else { return }
            
            do {
                let users = try JSONDecoder().decode(Response<Friend>.self, from: response.data!)
                print(users.response.items)
                print("GOOD")
                completion(.success(users.response.items))
            } catch {
                print(error)
            }
        }.resume()
    }
    
    func photoLoad(url: String, completion: @escaping (Result<UIImage, VKServiceError>) -> Void) {
        //let params: Parameters = []
        let url = url
        
        AF.request(url, method: .get).response { response in
            guard response.data != nil else { return }
            do {
                let photo = UIImage(data: ((response.data! as NSData) as Data))
                completion(.success(photo!))
            }
            
            
            
        }.resume()
    }
    
//    func groupsGet(user_id: Int, completion: @escaping (Result<[Group], VKServiceError>) -> Void) {
//        let method = "groups.get"
//        let params: Parameters = [
//            "user_id": user_id,
//            //"lang" : "en",
//            "extended" : 1,
//            "fields" : "members_count",
//            "count": 1,
//            "v" : 5.131,
//            "access_token" : apiToken
//        ]
//        
//        let url = apiUrl + method
//        let tempToConsole = url
//        print(tempToConsole, params)
//        
//        AF.request(url, method: .get, parameters: params).responseJSON { response in
//            guard let json = response.data else { return }
//            
//            //print(json)
//            
//            
//            //
//            //            if let error = response.error {
//            //                completion(.failure(.serverError))
//            //                print("FAILTURE")
//            //                print(error)
//            //            }
//            //
//            //            guard let data = response.data else {
//            //                completion(.failure(.notData))
//            //                print("NOT DATA")
//            //                return
//            //            }
//            
//            
//            do {
//                let group = try JSONDecoder().decode(Response<Group>.self, from: response.data!)
//                print(group.response.items)
//                print(response.data)
//                //print(users.response.count)
//                // print(response.value)
//                print("GOOD")
//                // let users2 = users.response.items
//                completion(.success(group.response.items))
//                print(type(of: group.response.items))
//            } catch {
//                print(error)
//                print(response.value)
//            }
//            
//            
//            
//            
//            
//        }.resume()
//    }
    
    func photosGetAll(owner_id: Int, completion: @escaping (Result<[Photo], VKServiceError>) -> Void) {
        let method = "photos.getAll"
        let params: Parameters = [
            "owner_id": owner_id,
            //"fields" : "description",
            "photo_sizes" : 1,
            "lang" : "en",
            "extended" : 1,
            //"count": 1,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            guard let json = response.data else { return }
            //print(json)
            
            
            //
            //            if let error = response.error {
            //                completion(.failure(.serverError))
            //                print("FAILTURE")
            //                print(error)
            //            }
            //
            //            guard let data = response.data else {
            //                completion(.failure(.notData))
            //                print("NOT DATA")
            //                return
            //            }
            
            
            do {
                print(response.value)
                let photos = try JSONDecoder().decode(Response<Photo>.self, from: response.data!)
                print(photos.response.items)
                //print(users.response.count)
                // print(response.value)
                print("GOOD")
                // let users2 = users.response.items
                completion(.success(photos.response.items))
                print(type(of: photos.response.items))
            } catch {
                print(error)
            }
            
            
            
            
            
        }.resume()
    }
    
    
    func groupsSearch(text: String) {
        let method = "groups.search"
        let params: Parameters = [
            "q": text,
            "lang" : "en",
            "count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
        }.resume()
    }
}

enum VKServiceError: Error {
    case decodeError
    case notData
    case serverError
}

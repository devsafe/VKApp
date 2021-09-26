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
    
    //    func loadWeatherData(city: String, completion: @escaping (Result<[WeatherObject], WeatherServiceError>) -> Void)
    
    func friendsGet(user_id: Int, completion: @escaping (Result<FriendsResponseModel, VKServiceError>) -> Void) {
        let method = "friends.get"
        let params: Parameters = [
            "user_id": user_id,
            "fields" : "city, photo_100",
            "lang" : "en",
            //"order": "name",
            //"count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            guard let json = response.data else { return }
            print(json)
            
            
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
                let users = try JSONDecoder().decode(FriendsResponseModel.self, from: response.data!)
                print(users)
                print(users.response.count)
                print("GOOD")
                // let users2 = users.response.items
                completion(.success(users))
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
    
    func groupsGet(user_id: Int, completion: @escaping (Result<GroupsResponseModel, VKServiceError>) -> Void) {
        let method = "groups.get"
        let params: Parameters = [
            "user_id": user_id,
            "fields" : "description",
            "lang" : "en",
            "extended" : 1,
            //"count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
            guard response.value != nil else { return }
            do {
                let groups = try JSONDecoder().decode(GroupsResponseModel.self, from: response.data!)
                completion(.success(groups))
            } catch {
                print(error)
            }
            
            
            
        }.resume()
    }
    
    func photosGetAll(owner_id: Int) {
        let method = "photos.getAll"
        let params: Parameters = [
            "owner_id": owner_id,
            "fields" : "description",
            "lang" : "en",
            "extended" : 1,
            "count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
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

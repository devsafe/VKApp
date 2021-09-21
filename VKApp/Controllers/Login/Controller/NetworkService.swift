//
//  NetworkService.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.09.2021.
//

import Foundation
import Alamofire

class NetworkService {
    let apiUrl = "https://api.vk.com/method/"
    let apiToken = UserSession.shared.token
    func friendsGet(user_id: Int) {
        let method = "friends.get"
        let params: Parameters = [
            "user_id": user_id,
            "fields" : "bdate",
            "lang" : "en",
            //"order": "name",
            "count": 10,
            "v" : 5.131,
            "access_token" : apiToken
        ]
        let url = apiUrl + method
        
        AF.request(url, method: .get, parameters: params).responseJSON { response in
            print(response.value as Any)
        }.resume()
    }
    
    func groupsGet(user_id: Int) {
        let method = "groups.get"
        let params: Parameters = [
            "user_id": user_id,
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



//groups.search

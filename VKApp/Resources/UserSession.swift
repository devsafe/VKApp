//
//  UserSession.swift
//  VKApp
//
//  Created by Boris Sobolev on 20.09.2021.
//

import Foundation

class UserSession {
    
    //Singleton
    static let shared = UserSession()
    
    private init(){}
    
    var token: String = ""
    var userId: Int = 0
}

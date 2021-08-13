//
//  Storage.swift
//  VKApp
//
//  Created by Boris Sobolev on 13.08.2021.
//

import Foundation

class Storage {
    static var allUsers = UserStorage.init().allUsers
    //static var myFriends = UserStorage.init().friends
    static var allGroups = GroupStorage.init().allGroups
    static var favGroups = GroupStorage.init().favGroups
    static var appSettings = SettingsStorage.init()
    static var userIdActiveSession = 0
}




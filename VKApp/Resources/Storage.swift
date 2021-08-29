//
//  Storage.swift
//  VKApp
//
//  Created by Boris Sobolev on 13.08.2021.
//

import Foundation

class Storage {
    static var allUsers = UserStorage.init().allUsers
    static var allGroups = GroupStorage.init().allGroups
    static var feedNews = FeedStorage.init().usersFeed
    static var feedGroupNews = NewsStorage.init().groupNews
    static var appSettings = SettingsStorage.init()
    static var userIdActiveSession = 0
}




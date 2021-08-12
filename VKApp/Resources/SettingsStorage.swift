//
//  SettingsStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 13.08.2021.
//

import Foundation

class SettingsStorage {
    
    let settings: [SettingsModel]
    
    init() {
        settings = [
        SettingsModel(setting1: "23", setting2: "344", setting3: 43, isTabBarAnimate: false)
        ]
    }
}

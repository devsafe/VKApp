//
//  GroupStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

class GroupStorage {
    
    let favGroups: [GroupModel]
    let allGroups: [GroupModel]
    
    init() {
        favGroups = [
            GroupModel(
                name: "Swift",
                description: "Learn more!",
                logo: "logo-swift",
                fullDescription: "Eat, Sleap, Code, Repeat!",
                subscribersCount: 365)
        ]
        
        allGroups = [GroupModel(
                        name: "HTML 5",
                        description: "Learn more!",
                        logo: "logo-html-5",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!Learn more!Learn more!Learn more!Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Netflix",
                        description: "Learn more!Learn more!Learn more!Learn more!Learn more!",
                        logo: "logo-netflix",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Learn more!",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Learn more!",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Learn more!",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Learn more!",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Learn more!",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Learn more!",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Learn more!",
                        logo: "logo-swift",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Learn more!",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Learn more!",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Learn more!",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Learn more!",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "HTML 5",
                        description: "Learn more!",
                        logo: "logo-html-5",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Learn more!",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Learn more!",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Learn more!",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Learn more!",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Learn more!",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Learn more!",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Learn more!",
                        logo: "logo-swift",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Learn more!",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Learn more!",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Learn more!",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Learn more!",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "HTML 5",
                        description: "Learn more!",
                        logo: "logo-html-5",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Learn more!",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Learn more!",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Learn more!",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Learn more!",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Learn more!",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Learn more!",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Learn more!",
                        logo: "logo-swift",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Learn more!",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Learn more!",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Learn more!",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Learn more!",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "HTML 5",
                        description: "Learn more!",
                        logo: "logo-html-5",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Learn more!",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Learn more!",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Learn more!",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Learn more!",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Learn more!",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Learn more!",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Learn more!",
                        logo: "logo-swift",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Learn more!",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Learn more!",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Learn more!",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Learn more!",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "HTML 5",
                        description: "Learn more!",
                        logo: "logo-html-5",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Learn more!",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Learn more!",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Learn more!",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Learn more!",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Learn more!",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Learn more!",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Learn more!",
                        logo: "logo-swift",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Learn more!",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Learn more!",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Learn more!",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Learn more!",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Learn more!Learn more!Learn more!Learn more!Learn more!",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
        ]
    }
}

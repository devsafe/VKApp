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
                        name: "Google Allo",
                        description: "Learn more!",
                        logo: "logo-google-allo",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Slack",
                        description: "Learn more!",
                        logo: "logo-slack",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Yelp",
                        description: "Learn more!",
                        logo: "logo-yelp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Word",
                        description: "Learn more!",
                        logo: "logo-word",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Windows",
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
                        name: "Visual Basic",
                        description: "Learn more!",
                        logo: "logo-visual-basic",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "uTorrent",
                        description: "Learn more!",
                        logo: "logo-utorrent",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Type Script",
                        description: "Learn more!",
                        logo: "logo-typescript",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Trip Advisor",
                        description: "Learn more!",
                        logo: "logo-tripadvisor",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift Education School",
                        description: "Learn more!",
                        logo: "logo-swift1",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Sketch",
                        description: "Learn more!",
                        logo: "logo-sketch",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Shazam",
                        description: "Learn more!",
                        logo: "logo-shazam",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Scratch",
                        description: "Learn more!",
                        logo: "logo-scratch",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Scala",
                        description: "Learn more!",
                        logo: "logo-scala",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Safari",
                        description: "Learn more!",
                        logo: "logo-safari",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Ruby",
                        description: "Learn more!",
                        logo: "logo-ruby",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "React",
                        description: "Learn more!",
                        logo: "logo-react",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Python",
                        description: "Learn more!",
                        logo: "logo-python",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Powerpoint",
                        description: "Learn more!",
                        logo: "logo-powerpoint",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "PHP",
                        description: "Learn more!",
                        logo: "logo-php",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adobe Photoshop",
                        description: "Learn more!",
                        logo: "logo-photoshop",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Pepsi",
                        description: "Learn more!",
                        logo: "logo-pepsi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Pay Pal",
                        description: "Learn more!",
                        logo: "logo-paypal",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Opera",
                        description: "Learn more!",
                        logo: "logo-opera",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Office",
                        description: "Learn more!",
                        logo: "logo-office",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Odnoklassniki",
                        description: "Learn more!",
                        logo: "logo-odnoklassniki",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "NVidia",
                        description: "Learn more!",
                        logo: "logo-nvidia",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Nike",
                        description: "Learn more!",
                        logo: "logo-nike",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "nginx",
                        description: "Learn more!",
                        logo: "logo-nginx",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "MySQL",
                        description: "Learn more!",
                        logo: "logo-mysql",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "McDonalds",
                        description: "Learn more!",
                        logo: "logo-mcdonalds",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Lisp",
                        description: "Learn more!",
                        logo: "logo-lisp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java Script",
                        description: "Learn more!",
                        logo: "logo-javascript",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "gnu-bash",
                        description: "Learn more!",
                        logo: "logo-gnu-bash",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Git Hub",
                        description: "Learn more!",
                        logo: "logo-github",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "FaceBook",
                        description: "Learn more!",
                        logo: "logo-facebook",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Evernote",
                        description: "Learn more!",
                        logo: "logo-evernote",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Electronics-Arts",
                        description: "Learn more!",
                        logo: "logo-electronics-arts",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Edge",
                        description: "Learn more!",
                        logo: "logo-edge",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Drupal",
                        description: "Learn more!",
                        logo: "logo-drupal",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Docker",
                        description: "Learn more!",
                        logo: "logo-docker",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "CSS-3",
                        description: "Learn more!",
                        logo: "logo-css-3",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Creative-Cloud",
                        description: "Learn more!",
                        logo: "logo-creative-cloud",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Common LISP",
                        description: "Learn more!",
                        logo: "logo-common-lisp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "C++",
                        description: "Learn more!",
                        logo: "logo-c-1",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "BEATS",
                        description: "Learn more!",
                        logo: "logo-beats",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Basecamp",
                        description: "Learn more!",
                        logo: "logo-basecamp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Apple",
                        description: "Learn more!",
                        logo: "logo-apple",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "AMD",
                        description: "Learn more!",
                        logo: "logo-amd",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ADSense",
                        description: "Learn more!",
                        logo: "logo-adsense",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "adobe",
                        description: "Learn more!",
                        logo: "logo-adobe",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Learn more!",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Overflowing",
                        description: "Learn more!",
                        logo: "logo-overflowing",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Learn more!",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Chrome",
                        description: "Learn more!",
                        logo: "logo-chrome",
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
                        name: "Grooveshark",
                        description: "Learn more!",
                        logo: "logo-grooveshark",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Coderwall",
                        description: "Learn more!Learn more!Learn more!Learn more!Learn more!",
                        logo: "logo-coderwall",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
        ]
    }
}

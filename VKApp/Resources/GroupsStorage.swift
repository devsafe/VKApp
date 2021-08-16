//
//  GroupStorage.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import Foundation

class GroupStorage {
    
    let allGroups: [GroupModel]
    
    init() {

        allGroups = [GroupModel(
                        name: "HTML 5",
                        description: "Duis a neque in.",
                        logo: "logo-html-5",
                        fullDescription: "Vestibulum quis massa a lacus aliquet interdum.",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swiftify",
                        description: "Suspendisse a justo sollicitudin, malesuada ipsum vitae, dictum dolor.",
                        logo: "logo-swiftify",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Netflix",
                        description: "Proin pharetra sem ac nunc maximus, in ullamcorper dolor porttitor.",
                        logo: "logo-netflix",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java",
                        description: "Nunc in quam luctus, accumsan.",
                        logo: "logo-java",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Node JS",
                        description: "Mauris laoreet massa molestie.",
                        logo: "logo-nodejs",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft",
                        description: "Morbi laoreet ante id eleifend porta.",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Vivamus nec eros vitae velit suscipit tempus at sit amet nibh.",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adidas",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        logo: "logo-adidas",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Morbi et nisi sit amet elit finibus euismod nec eu nisl.",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Tinder",
                        description: "Etiam at tellus suscipit eros commodo cursus nec at tellus.",
                        logo: "logo-tinder",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Etiam molestie orci eleifend, tempor leo a, rutrum arcu.",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift",
                        description: "Nam convallis turpis eu justo ultricies, id finibus sapien luctus.",
                        logo: "logo-swift1",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Sed nec magna eget lorem commodo dictum sit amet non turpis.",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Maecenas imperdiet lorem eu elit venenatis sodales.",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Vestibulum at dolor eleifend, auctor nulla in, facilisis mi.",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Gmail",
                        description: "Phasellus in magna ut enim tempor tincidunt convallis sit amet justo.",
                        logo: "logo-gmail",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Allo",
                        description: "Phasellus accumsan tortor vitae nulla molestie, sit amet consectetur ipsum egestas.",
                        logo: "logo-google-allo",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Slack",
                        description: "Aenean ut felis luctus, pharetra lorem non, efficitur lorem.",
                        logo: "logo-slack",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Yelp",
                        description: "Integer maximus dui quis sodales fringilla.",
                        logo: "logo-yelp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Word",
                        description: "Nullam nec lectus pretium, facilisis eros et, finibus lorem.",
                        logo: "logo-word",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Windows",
                        description: "Duis vel tellus a odio lacinia aliquet et ac ex.",
                        logo: "logo-microsoft",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Play Fans",
                        description: "Nunc semper ipsum eleifend scelerisque feugiat.",
                        logo: "logo-google-play",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Visual Basic",
                        description: "Fusce at ligula quis libero dignissim tincidunt a pretium enim.",
                        logo: "logo-visual-basic",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "uTorrent",
                        description: "Pellentesque eget tellus auctor, iaculis metus sed, feugiat diam.",
                        logo: "logo-utorrent",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Type Script",
                        description: "Donec ultricies magna ac libero cursus, pharetra sodales odio vestibulum.",
                        logo: "logo-typescript",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Trip Advisor",
                        description: "In ornare neque ut eleifend commodo.",
                        logo: "logo-tripadvisor",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Swift Education School",
                        description: "Integer scelerisque leo et ligula ullamcorper ullamcorper non id enim.",
                        logo: "logo-swift1",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Sketch",
                        description: "Ut hendrerit sem ac ex sodales imperdiet.",
                        logo: "logo-sketch",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Shazam",
                        description: "Phasellus facilisis magna id finibus tincidunt.",
                        logo: "logo-shazam",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Scratch",
                        description: "Nullam vitae erat tempus, pellentesque neque quis, blandit leo.",
                        logo: "logo-scratch",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Scala",
                        description: "Cras at sem in libero accumsan semper gravida egestas sapien.",
                        logo: "logo-scala",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Safari",
                        description: "Sed non arcu dignissim, rhoncus ipsum vel, sollicitudin lorem.",
                        logo: "logo-safari",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Ruby",
                        description: "Ut dapibus felis vitae consectetur aliquet.",
                        logo: "logo-ruby",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "React",
                        description: "Nullam eget nunc finibus, accumsan dui ac, rutrum eros.",
                        logo: "logo-react",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Python",
                        description: "Sed vel erat pretium, fermentum nibh vel, semper nibh.",
                        logo: "logo-python",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Powerpoint",
                        description: "Quisque sodales ante eget nisl luctus pellentesque.",
                        logo: "logo-powerpoint",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "PHP",
                        description: "Maecenas accumsan est eu leo ullamcorper gravida.",
                        logo: "logo-php",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Adobe Photoshop",
                        description: "Pellentesque ut ligula et erat sagittis tincidunt quis id nibh.",
                        logo: "logo-photoshop",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Pepsi",
                        description: "Maecenas nec turpis vel felis tristique viverra sed vel sapien.",
                        logo: "logo-pepsi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Pay Pal",
                        description: "Nulla vulputate odio eget ex finibus, sed tempor massa dictum.",
                        logo: "logo-paypal",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Opera",
                        description: "Aenean eu tortor ut justo accumsan pellentesque.",
                        logo: "logo-opera",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Microsoft Office",
                        description: "Vestibulum pharetra arcu vitae lacus lacinia elementum.",
                        logo: "logo-office",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Odnoklassniki",
                        description: "Phasellus fermentum velit ut urna vestibulum maximus.",
                        logo: "logo-odnoklassniki",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "NVidia",
                        description: "Nullam gravida felis et augue consequat, eu congue turpis finibus.",
                        logo: "logo-nvidia",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Nike",
                        description: "Etiam lacinia orci nec leo tempus, vitae placerat diam volutpat.",
                        logo: "logo-nike",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "nginx",
                        description: "In ultricies mauris quis dui malesuada, ac malesuada lacus elementum.",
                        logo: "logo-nginx",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "MySQL",
                        description: "Nulla imperdiet elit eget diam euismod ullamcorper.",
                        logo: "logo-mysql",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "McDonalds",
                        description: "Maecenas vehicula felis non ipsum ullamcorper hendrerit.",
                        logo: "logo-mcdonalds",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Lisp",
                        description: "Donec scelerisque tortor eu elit maximus pulvinar.",
                        logo: "logo-lisp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Java Script",
                        description: "Phasellus faucibus sapien vitae facilisis fermentum.",
                        logo: "logo-javascript",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "gnu-bash",
                        description: "Duis lacinia ligula et metus scelerisque finibus.",
                        logo: "logo-gnu-bash",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Git Hub",
                        description: "Pellentesque in sapien vel metus ultricies sodales.",
                        logo: "logo-github",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "FaceBook",
                        description: "Vivamus aliquam dolor in augue sollicitudin, sit amet auctor mi posuere.",
                        logo: "logo-facebook",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Evernote",
                        description: "Sed id ipsum ultricies, sollicitudin ex fringilla, gravida nulla.",
                        logo: "logo-evernote",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Electronics-Arts",
                        description: "Praesent non odio id enim efficitur auctor.",
                        logo: "logo-electronics-arts",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Edge",
                        description: "Curabitur in tortor lobortis, venenatis metus quis, feugiat neque.",
                        logo: "logo-edge",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Drupal",
                        description: "Cras nec lorem ac dui finibus mollis.",
                        logo: "logo-drupal",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Docker",
                        description: "Nulla at felis pharetra, accumsan augue non, hendrerit diam.",
                        logo: "logo-docker",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "CSS-3",
                        description: "Maecenas mollis nisi nec dui gravida feugiat.",
                        logo: "logo-css-3",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Creative-Cloud",
                        description: "In nec mi a dolor venenatis ornare non quis nulla.",
                        logo: "logo-creative-cloud",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Common LISP",
                        description: "Pellentesque eget nunc ut velit tempor sagittis in mollis odio.",
                        logo: "logo-common-lisp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "C++",
                        description: "Donec imperdiet tellus quis felis mollis hendrerit sed vitae enim.",
                        logo: "logo-c-1",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "BEATS",
                        description: "Integer id orci quis turpis dapibus eleifend.",
                        logo: "logo-beats",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Basecamp",
                        description: "Nullam lobortis lorem quis nunc maximus condimentum.",
                        logo: "logo-basecamp",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Apple",
                        description: "Quisque at purus ac nunc dapibus ultricies non ut nibh.",
                        logo: "logo-apple",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "AMD",
                        description: "Donec id turpis at massa efficitur ornare.",
                        logo: "logo-amd",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ADSense",
                        description: "Curabitur at metus sit amet sem iaculis imperdiet ut sed arcu.",
                        logo: "logo-adsense",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "adobe",
                        description: "Maecenas non metus suscipit est efficitur cursus vel eget tortor.",
                        logo: "logo-adobe",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Uber",
                        description: "Donec volutpat magna in metus suscipit, nec ornare augue maximus.",
                        logo: "logo-uber",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Overflowing",
                        description: "Cras dignissim sapien ultricies ante dapibus, vel luctus massa eleifend.",
                        logo: "logo-overflowing",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Firefox",
                        description: "Morbi blandit mi eu lorem sagittis auctor.",
                        logo: "logo-firefox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Google Chrome",
                        description: "Pellentesque auctor augue quis sagittis molestie.",
                        logo: "logo-chrome",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "ATI",
                        description: "Curabitur aliquet nunc consectetur, lacinia arcu viverra, ornare enim.",
                        logo: "logo-ati",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Xiaomi",
                        description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                        logo: "logo-xiaomi",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "XBOX",
                        description: "Quisque eget nisl rhoncus, varius purus in, facilisis arcu.",
                        logo: "logo-xbox",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Grooveshark",
                        description: "Aliquam maximus nibh eu arcu euismod, vitae facilisis urna rhoncus.",
                        logo: "logo-grooveshark",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
                     GroupModel(
                        name: "Coderwall",
                        description: "Duis dictum urna eget ipsum placerat viverra.",
                        logo: "logo-coderwall",
                        fullDescription: "Eat, Sleap, Code, Repeat!",
                        subscribersCount: 365),
        ]
    }
}

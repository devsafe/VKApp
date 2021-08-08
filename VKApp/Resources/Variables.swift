//
//  VariablesController.swift
//  VKApp
//
//  Created by Boris Sobolev on 08.08.2021.
//

import UIKit

struct Variables {
    struct tabbarList {
        static var tabbarArray = [["Friends","---"],["Communities","---"],["Profile","---"]]
    }
    struct friendsList {
        static var friendsListArray = [["Pashkevich Drew","Moscow"],["Lamzov Artem","Moscow"],["Ermolov Ilya","Lichtenshtein"],["Stoyan Nikita","Saint Petersburg"],["Sinoshin Sergey","Sosensky"],["Polyakov Valentin","Spain"],["Kuchuk Yuriy","Kaluga"],["Amiroslanov Amir","Tula"]]
    }
    struct communitiesList {
        static var communitiesArray = [["Rock Music Fans","9345","0"],["Yoga","34554","0"],["Swift","3334","1"]]
    }
    struct favCommunitiesList {
        static var favCommunitiesArray: [[String]] = [[]]
        }
    struct profileList {
        static var profileArray = [["Name","Boris Sobolev"],["Location","Moscow"],["Age","33"]]
    }
}



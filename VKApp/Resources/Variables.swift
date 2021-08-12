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
        static var friendsListArray = [["Pashkevich Drew","Moscow","1"],["Lamzov Artem","Moscow","2"],["Ermolov Ilya","Lichtenshtein","3"],["Stoyan Nikita","Saint Petersburg","4"],["Sinoshin Sergey","Sosensky","5"],["Polyakov Valentin","Spain","6"],["Kuchuk Yuriy","Kaluga","7"],["Petuhova Anna","Sochi","9"]]
        static var photosListArray = [["photo01","photo02","photo03","photo04","photo05","photo06","photo07","photo08","photo09","photo10"],["photo11","photo12","photo13","photo14","photo15","photo16"],["photo21","photo22","photo23","photo24","photo25","photo26","photo27","photo28","photo29"],["photo01","photo02","photo03","photo04","photo05","photo06","photo07","photo08","photo09","photo10"],["photo11","photo12","photo13","photo14","photo15","photo16"],["photo21","photo22","photo23","photo24","photo25","photo26","photo27","photo28","photo29"],["photo01","photo02","photo03","photo04","photo05","photo06","photo07","photo08","photo09","photo10"],["photo11","photo12","photo13","photo14","photo15","photo16"],["photo21","photo22","photo23","photo24","photo25","photo26","photo27","photo28","photo29"],["Stoyan Nikita","Saint Petersburg","4"],["Sinoshin Sergey","Sosensky","5"],["Polyakov Valentin","Spain","6"],["Kuchuk Yuriy","Kaluga","7"],["Petuhova Anna","Sochi","9"]]
    }
    
    struct communitiesList {
        static var communitiesArray = [["Pepsi Lovers","9345","pepsi","fav"],["HTML5","34554","html-5","fav"],["Swift","345346","swift","fav"],["Hip-Hop Music Fans","9345","adidas","fav"],["AMD","34554","amd","no"],["Android","339","android","fav"],["Apple","9345","apple","fav"],["ATI","453","ati","fav"],["GMail","29","gmail","fav"],["Firefox","9345","firefox","fav"],["Google Play","20","google-play","no"],["Microsoft","722","microsoft","fav"]]
    }
    
    struct favCommunitiesList {
        static var favCommunitiesArray: [[String]] = [["Swift","345346","swift","fav"]]
    }
    
    struct profileList {
        static var profileArray = [["Name","Boris Sobolev"],["Location","Moscow"],["Age","18"],["avatar","1"]]
    }
    
    struct Settings {
        static var settingsArray = [["Tab Bar Animations","0","0","0"],["Location","Moscow"],["Age","18"],["avatar","1"]]
    }
}

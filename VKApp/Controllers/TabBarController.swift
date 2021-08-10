//
//  TabBarController.swift
//  VKApp
//
//  Created by Boris Sobolev on 07.08.2021.
//

import UIKit

class TabBarController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //UITabBar.appearance().barTintColor = .cyan
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
        UITabBarItem.appearance().badgeColor = .systemGray
        UITabBarItem.appearance().setBadgeTextAttributes([.font: UIFont.systemFont(ofSize: 10, weight: .medium)], for: .normal)
        // Do any additional setup after loading the view.
        tabBar.items![0].badgeValue = String(Variables.friendsList.friendsListArray.count)
        tabBar.items![1].badgeValue = String(Variables.favCommunitiesList.favCommunitiesArray.count)
        //tabBar.items![2].badgeValue = String(Variables.profileList.profileArray.count)
        tabBar.items![0].title = Variables.tabbarList.tabbarArray[0][0]
        //tabBar.items![0].titlePositionAdjustment.horizontal = 344
    }
    
    @IBOutlet weak var tabBarOutlet: UITabBarItem!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func loadList(notification: NSNotification){
        //load data here
        tabBar.items![1].badgeValue = String(Variables.favCommunitiesList.favCommunitiesArray.count)
    }
}

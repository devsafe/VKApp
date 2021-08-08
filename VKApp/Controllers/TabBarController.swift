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
        UITabBarItem.appearance().badgeColor = .systemGray
        UITabBarItem.appearance().setBadgeTextAttributes([.font: UIFont.systemFont(ofSize: 10, weight: .medium)], for: .normal)
        // Do any additional setup after loading the view.
        

        
        tabBar.items![0].badgeValue = String(Variables.friendsList.friendsListArray.count)
        //tabBar.items![1].badgeValue = String(Variables.favCommunitiesList.favCommunitiesArray.count)
        //tabBar.items![2].badgeValue = String(Variables.profileList.profileArray.count)
        tabBar.items![0].title = Variables.tabbarList.tabbarArray[0][0]
        //tabBar.items![0].titlePositionAdjustment.horizontal = 344
        
//        func repositionBadge(tabIndex: Int){
//
//            for badgeView in self.tabBarController!.tabBar.subviews[tabIndex].subviews {
//
//                if NSStringFromClass(TabBarController.classForCoder()) == "_UIBadgeView" {
//                    badgeView.layer.transform = CATransform3DIdentity
//                    badgeView.layer.transform = CATransform3DMakeTranslation(-17.0, 1.0, 1.0)
//                }
//            }
//        }
        
//        repositionBadge(tabIndex: 0)
    }
    
    @IBOutlet weak var tabBarOutlet: UITabBarItem!
    
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

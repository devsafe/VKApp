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
        delegate = self
        NotificationCenter.default.addObserver(self, selector: #selector(loadList), name: NSNotification.Name(rawValue: "load"), object: nil)
        UITabBarItem.appearance().badgeColor = .systemGray
        UITabBarItem.appearance().setBadgeTextAttributes([.font: UIFont.systemFont(ofSize: 10, weight: .medium)], for: .normal)
        tabBar.items![0].badgeValue = String(Storage.allUsers.count)
        tabBar.items![1].badgeValue = String(Storage.allUsers[Storage.userIdActiveSession].favGroups.count)
    }
    
    @IBOutlet weak var tabBarOutlet: UITabBarItem!
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @objc func loadList(notification: NSNotification){
        tabBar.items![1].badgeValue = String(Storage.allUsers[Storage.userIdActiveSession].favGroups.count)
    }
}

extension TabBarController: UITabBarControllerDelegate  {
    func tabBarController(_ tabBarController: UITabBarController, shouldSelect viewController: UIViewController) -> Bool {
        guard let fromView = selectedViewController?.view, let toView = viewController.view else {
            return false
        }
        if fromView != toView {
            if Storage.appSettings.isTabBarAnimated == true {
                UIView.transition(from: fromView, to: toView, duration: 0.8, options: [.transitionCrossDissolve], completion: nil) }
            else {
            }
        }
        return true
    }
}

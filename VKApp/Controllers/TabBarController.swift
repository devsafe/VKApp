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
        UITabBarItem.appearance().badgeColor = .systemBlue
        
        // Do any additional setup after loading the view.
    }
    

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

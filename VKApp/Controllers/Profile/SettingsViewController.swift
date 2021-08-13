//
//  SettingsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    @IBOutlet var tabbarAnimationSwitch: UISwitch!
    @IBOutlet var rollButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollButton.layer.cornerRadius = 8
        
    }
    
    @IBAction func tabAnimationSwitch(_ sender: UISwitch) {
        Storage.appSettings.isTabBarAnimated = sender.isOn ? true : false
       // print(SettingsStorage.setting1)
    }
}

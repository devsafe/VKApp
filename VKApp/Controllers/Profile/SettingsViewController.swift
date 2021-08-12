//
//  SettingsViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 12.08.2021.
//

import UIKit

class SettingsViewController: UIViewController {
    
    @IBOutlet var tabbarAnimationSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func tabAnimationSwitch(_ sender: UISwitch) {
        
        guard let switchObj = sender  as? UISwitch else { return }
        print(switchObj.isOn)
        if switchObj.isOn {
            Variables.Settings.settingsArray[0][1] = "1"
        } else {
            Variables.Settings.settingsArray[0][1] = "0"
        }
    }
}

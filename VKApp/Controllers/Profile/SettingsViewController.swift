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

        // Do any additional setup after loading the view.
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
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

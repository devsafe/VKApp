//
//  LoginFormController.swift
//  VKApp
//
//  Created by Boris Sobolev on 06.08.2021.
//

import UIKit

class LoginFormController: UIViewController {
    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var loginWithFacebookButton: UIButton!
    @IBOutlet weak var loginWithAppleButton: UIButton!
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Adding code for hidding keyboard after tap on some area around keyboard
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginFormController.dismissKeyBoard))
        self.view.addGestureRecognizer(tap)
        
        //Add rounded corners on buttons
        loginButton.layer.cornerRadius = 8
        loginWithAppleButton.layer.cornerRadius = 8
        loginWithFacebookButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func loginWithFacebookButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func loginWithAppleButtonPressed(_ sender: UIButton) {
    }
    @objc func dismissKeyBoard() {
        self.view.endEditing(true)
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
    }
    // Replace "TouchesBegan" - not work here.
    //    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    //        self.view.endEditing(true)
    //    }
    
    
}

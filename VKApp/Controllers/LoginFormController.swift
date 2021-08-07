//
//  LoginFormController.swift
//  VKApp
//
//  Created by Boris Sobolev on 06.08.2021.
//

import UIKit

final class LoginFormController: UIViewController {
    @IBOutlet private var loginTextField: UITextField!
    @IBOutlet private var passwordTextField: UITextField!
    @IBOutlet private var loginButton: UIButton!
    @IBOutlet private var loginWithFacebookButton: UIButton!
    @IBOutlet private var loginWithAppleButton: UIButton!
    @IBOutlet private var registerButton: UIButton!
    @IBOutlet private var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //         Adding code for hidding keyboard after tap on some area around keyboard
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginFormController.dismissKeyBoard))
        self.scrollView?.addGestureRecognizer(tapGesture)
        
        //Add rounded corners on buttons
        loginButton.layer.cornerRadius = 8
        loginWithFacebookButton.setImage(UIImage(systemName: "message.circle.fill"), for: .normal)
        loginWithFacebookButton.tintColor = .white
        loginWithAppleButton.setImage(UIImage(systemName: "applelogo"), for: .normal)
        loginWithAppleButton.tintColor = .white
        loginWithAppleButton.layer.cornerRadius = 8
        loginWithFacebookButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        // Observe to keyboard appear
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Observe to keyboard disappear
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        let loginText = loginTextField.text
        let passwordText = passwordTextField.text
        if loginText == "1" && passwordText == "1" {
            print("Success login")
        } else {
            print("Login or password is incorrect")
            passwordTextField.text = nil
                        let errorLoginAlert = UIAlertController(
                            title: "Error",
                            message: "Invalid username or password.", preferredStyle: .actionSheet)
                        errorLoginAlert.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
                        self.present(errorLoginAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let loginText = loginTextField.text
        let passwordText = passwordTextField.text
        
        if loginText == "1" && passwordText == "1" {
            print("Success Register")
        } else {
            print("Register fail")
            passwordTextField.text = nil
                        let errorRegisterAlert = UIAlertController(
                            title: "Error",
                            message: "Register func is not available now", preferredStyle: .actionSheet)
                        errorRegisterAlert.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
                        self.present(errorRegisterAlert, animated: true, completion: nil)
        }
    }
    
    @IBAction func loginWithFacebookButtonPressed(_ sender: UIButton) {
        print("Login with Facebook button pressed")
    }
    
    @IBAction func loginWithAppleButtonPressed(_ sender: UIButton) {
        print("Login with Apple button pressed")
    }
    
    @objc func dismissKeyBoard() {
        self.view.endEditing(true)
    }
    
    
    // When keyboard appear
    @objc func keyboardWasShown(notification: Notification) {
        
        // let size of keyboard
        let info = notification.userInfo! as NSDictionary
        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size
        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)
        
        // add space at bottom of a UIScrollView, equals to keyboard height
        self.scrollView?.contentInset = contentInsets
        scrollView?.scrollIndicatorInsets = contentInsets
    }
    
    // When keyboard is disappear
    @objc func keyboardWillBeHidden(notification: Notification) {
        // set space in bottom UIScrollView, equals 0
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    
    //     Replace "TouchesBegan" - not work here.
    //        override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
    //            self.view.endEditing(true)
    //        }
    
    
}

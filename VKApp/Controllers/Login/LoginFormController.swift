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
    
    var allFriends: [UserModel] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let storage = UserStorage()
        allFriends = storage.allFriends
        //         Adding code for hidding keyboard after tap on some area around keyboard
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginFormController.dismissKeyBoard))
        self.scrollView?.addGestureRecognizer(tapGesture)
        //Add rounded corners on buttons
        loginButton.layer.cornerRadius = 8
        loginWithFacebookButton.setImage(UIImage(systemName: "envelope.circle.fill"), for: .normal)
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
    
    @IBAction func logout(_ segue: UIStoryboardSegue) {
        print("Logout")
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        let checkResult = checkUserData()
        if !checkResult {
            showLoginError()
        }
        return checkResult
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
    }
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let loginText = loginTextField.text
        let passwordText = passwordTextField.text
        //let userId = allFriends[0]
        if loginText == allFriends[0].userName && passwordText == allFriends[0].password {
            print("Success Register")
        } else {
            //showRegisterError()
            print("Fail Register")
            
            
        }
    }
    
    @IBAction func loginWithFacebookButtonPressed(_ sender: UIButton) {
        print("Login with Facebook button pressed")
    }
    @IBAction func loginWithAppleButtonPressed(_ sender: UIButton) {
        if loginTextField.text == allFriends[0].userName && passwordTextField.text == "" {
            print("Admin password is: \(allFriends[0].password)")
        } else {
            //showRegisterError()
            print("Fail Register")
            // print(loginTextField.text, allFriends[0].userName, passwordTextField.text)
            
            print("////////////////")
            
        }
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
    
    func checkUserData() -> Bool {
        guard let login = loginTextField.text,
              let password = passwordTextField.text else { return false }
        if isUserInDB(userName: login) && login == UserStorage.init().allFriends[getIndexByUserName(userName: login)!].userName && password == UserStorage.init().allFriends[getIndexByUserName(userName: login)!].password {
            return true
        } else {
            return false
        }
    }
    
    func isUserInDB(userName: String) -> Bool {
        (UserStorage.init().friends.firstIndex(where: { $0.userName == userName }) != nil) ? true : false
    }
    
    func getIndexByUserName(userName: String) -> Int!  {
        UserStorage.init().friends.firstIndex(where: { $0.userName == userName })
    }
    
    func showLoginError() {
        let alter = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel, handler: nil)
        alter.addAction(action)
        passwordTextField.text = nil
        present(alter, animated: true, completion: nil)
    }
    
    func showRegisterError() {
        print("Register fail")
        passwordTextField.text = nil
        let errorRegisterAlert = UIAlertController(
            title: "Error",
            message: "Register func is not available now", preferredStyle: .actionSheet)
        errorRegisterAlert.addAction(UIAlertAction(title: "Back", style: .default, handler: nil))
        self.present(errorRegisterAlert, animated: true, completion: nil)
    }
    
}

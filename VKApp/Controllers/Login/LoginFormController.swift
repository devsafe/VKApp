//
//  LoginFormController.swift
//  VKApp
//
//  Created by Boris Sobolev on 06.08.2021.
//

import UIKit

class LoginFormController: UIViewController {
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
        let loginText = loginTextField.text!
        let passwordText = passwordTextField.text!
        if isUserInDB(userName: loginText) {
            showRegisterError(userName: loginText)
        } else {
            Storage.allUsers.append(UserModel(userName: loginText, name: loginText != "" ? loginText : "Empty", surName: loginText != "" ? "User" : "Line", password: passwordText, avatar: "avatarDefault", location: "Default City", favGroups: [GroupModel(name: "Example Group", description: "This is example group", logo: "logo-swift", fullDescription: "", subscribersCount: 0)], photo: [PhotoModel(name: "", fileName: "avatarDefault", likeCount: 0, isLike: false)]))
            showRegisterProcessAlert(userName: loginText)
           // showRegisterInformation(userName: loginText)
        }
    }
    
    @IBAction func loginWithFacebookButtonPressed(_ sender: UIButton) {
        print("Login with Facebook button pressed")
        //showRegisterProcessAlert(userName: loginTextField.text != "" ? loginTextField.text! : "User")
    }
    @IBAction func loginWithAppleButtonPressed(_ sender: UIButton) {
        if isUserInDB(userName: loginTextField.text!) {
            print("Login with Apple pressed. User \(loginTextField.text!) in DB")
        } else {
            print("Fail Register, User \(loginTextField.text!) not in DB")
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
        if isUserInDB(userName: login) && login == Storage.allUsers[getIndexByUserName(userName: login)!].userName && password == Storage.allUsers[getIndexByUserName(userName: login)!].password {
            Storage.userIdActiveSession = getIndexByUserName(userName: login)
            return true
        } else {
            return false
        }
    }
    
    func isUserInDB(userName: String) -> Bool {
        (Storage.allUsers.firstIndex(where: { $0.userName == userName }) != nil) ? true : false
    }
    
    func getIndexByUserName(userName: String) -> Int!  {
        Storage.allUsers.firstIndex(where: { $0.userName == userName })
    }
    
    func showLoginError() {
        let alter = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive, handler: nil)
        alter.addAction(action)
        passwordTextField.text = nil
        present(alter, animated: true, completion: nil)
    }
    
    func showRegisterError(userName: String) {
        print("Register fail")
        passwordTextField.text = nil
        let errorRegisterAlert = UIAlertController(
            title: "Register Error",
            message: "Username \(userName) already registered. Type another username and repeat.", preferredStyle: .actionSheet)
        errorRegisterAlert.addAction(UIAlertAction(title: "Back", style: .destructive, handler: nil))
        self.present(errorRegisterAlert, animated: true, completion: nil)
    }
    
    func showRegisterInformation(userName: String) {
        let errorRegisterAlert = UIAlertController(
            title: "Registration complete!",
            message: "Username \(userName) registered. Type username and password and repeat login.", preferredStyle: .alert)
        errorRegisterAlert.addAction(UIAlertAction(title: "Deal with it!", style: .default, handler: nil))
        self.present(errorRegisterAlert, animated: true, completion: nil)
    }
    
    func showRegisterProcessAlert(userName: String) {
        let showRegisterProcessAlert = UIAlertController(
            title: "Registration form",
            message: "Hello \(userName), Type your Name and Surname to complete registration process:", preferredStyle: .alert)
        showRegisterProcessAlert.addAction(UIAlertAction(title: "Save", style: .default, handler: { (action: UIAlertAction!) in
            Storage.allUsers[self.getIndexByUserName(userName: userName)].name = showRegisterProcessAlert.textFields![0].text!
            Storage.allUsers[self.getIndexByUserName(userName: userName)].surName = showRegisterProcessAlert.textFields![1].text!
            self.showRegisterInformation(userName: userName)

        }))
        showRegisterProcessAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Name"
            
        })
        showRegisterProcessAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Surname"
        })
        showRegisterProcessAlert.textFields![0].text = "Just"
        //showRegisterProcessAlert.textFields![0].description = "erere"
        showRegisterProcessAlert.textFields![1].text = "Registered"
        self.present(showRegisterProcessAlert, animated: true, completion: nil)
    }
    
    func registerEnterYourNameAlert(userName: String) {
        let showRegisterProcessAlert = UIAlertController(
            title: "Registration form",
            message: "What is your name?", preferredStyle: .alert)
        showRegisterProcessAlert.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        showRegisterProcessAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Name"
        })
        showRegisterProcessAlert.textFields![0].text = "Ivan"
        self.present(showRegisterProcessAlert, animated: true, completion: nil)
    }
    
    func registerEnterYourSurNameAlert(userName: String) {
        let showRegisterProcessAlert = UIAlertController(
            title: "Registration form",
            message: "What is your surname?", preferredStyle: .alert)
        showRegisterProcessAlert.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        showRegisterProcessAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Name"
        })
        showRegisterProcessAlert.textFields![0].text = "Ivan"
        self.present(showRegisterProcessAlert, animated: true, completion: nil)
    }
    
    func registerEnterYourLocationAlert(userName: String) {
        let showRegisterProcessAlert = UIAlertController(
            title: "Registration form",
            message: "Where are you from?", preferredStyle: .alert)
        showRegisterProcessAlert.addAction(UIAlertAction(title: "Save", style: .default, handler: nil))
        showRegisterProcessAlert.addTextField(configurationHandler: { textField in
            textField.placeholder = "Location"
        })
        showRegisterProcessAlert.textFields![0].text = "Default City"
        self.present(showRegisterProcessAlert, animated: true, completion: nil)
    }
    
}

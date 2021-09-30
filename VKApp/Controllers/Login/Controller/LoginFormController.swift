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
    @IBOutlet var logoAppImageOutlet: UIImageView!
    @IBOutlet var loadingIndicatorOutlet: UIActivityIndicatorView!
    
    
    
    private let cubeView = Cube()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //         Adding code for hidding keyboard after tap on some area around keyboard
        let tapGesture: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(LoginFormController.dismissKeyBoard))
        self.scrollView?.addGestureRecognizer(tapGesture)
        //Add rounded corners on buttons
        loginButton.layer.cornerRadius = 8
        loginWithAppleButton.layer.cornerRadius = 8
        loginWithFacebookButton.layer.cornerRadius = 8
        registerButton.layer.cornerRadius = 8
        loginWithFacebookButton.setImage(UIImage(systemName: "envelope.circle.fill"), for: .normal)
        loginWithFacebookButton.tintColor = .white
        loginWithAppleButton.tintColor = .white
        loginTextField.text = "admin"
        passwordTextField.text = "123"
        loginButton.titleLabel?.text = "Login"
        registerButton.titleLabel?.text = "Register"
        loginWithAppleButton.titleLabel?.text = "Login with Apple"
        loginWithFacebookButton.titleLabel?.text = "Login with Facebook"
        loginWithAppleButton.setImage(UIImage(systemName: "applelogo"), for: .normal)
        setupCubeView()
        cubeView.isHidden = true
        loadingIndicatorOutlet.hidesWhenStopped = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // Observe to keyboard appear
        
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)
        // Observe to keyboard disappear
        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
        cubeView.isHidden = true
        loadingIndicatorOutlet.stopAnimating()
        
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)
        cubeView.animationStop()
        //cubeView.isHidden = true
    }
    
    @IBAction func logout(_ segue: UIStoryboardSegue) {
    }
    
    override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
        loadingIndicatorOutlet.startAnimating()
        let checkResult = checkUserData()
        //loadingIndicatorOutlet.stopAnimating()
        if !checkResult {
            showLoginError()
            animateButtonError(animateview: loginButton)
            cubeView.isHidden = true
        }
        return checkResult
    }
    
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        loadingIndicatorOutlet.startAnimating()
    }
    
    @IBAction func registerButtonPressed(_ sender: UIButton) {
        let loginText = loginTextField.text!
        let passwordText = passwordTextField.text!
        if isUserInDB(userName: loginText) {
            showRegisterError(userName: loginText)
            animateButtonError(animateview: registerButton)
            
        } else {
            registerNewUserOnLoginView(userName: loginText, password: passwordText)
            showRegisterProcessAlert(userName: loginText)
        }
    }
    
    @IBAction func loginWithFacebookButtonPressed(_ sender: UIButton) {
        print("Login with Facebook button pressed")
        // animateFaceBookButton()
        //shakeAnimation()
        
        cubeView.isHidden = false
        cubeView.animationStart()
        //animationLogo()
        loadingIndicatorOutlet.startAnimating()
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(2)) {
            if self.shouldPerformSegue(withIdentifier: "ShowAppAfterLogin", sender: nil) {
                self.performSegue(withIdentifier: "ShowAppAfterLogin", sender: nil)
            }
        }
        // cubeView.animationStop()
        
        let blurEffect = UIBlurEffect(style: UIBlurEffect.Style.regular)
        let blurEffectView = UIVisualEffectView(effect: blurEffect)
        //        blurEffectView.frame = scrollView.bounds
        //        blurEffectView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        //        scrollView.addSubview(blurEffectView)
        
        UIView.animate(withDuration: 5) {
            blurEffectView.effect = UIBlurEffect(style: UIBlurEffect.Style.prominent)
        }
    }
    
    @IBAction func loginWithAppleButtonPressed(_ sender: UIButton) {
        let toViewController = WKLoginViewController()
        self.present(toViewController, animated: true, completion: nil)
        
        if isUserInDB(userName: loginTextField.text!) {
            print("Login with Apple pressed. User \(loginTextField.text!) in DB")
        } else {
            print("Login with Apple pressed, User \(loginTextField.text!) not in DB")
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
    
    func registerNewUserOnLoginView(userName: String, password: String) {
        Storage.allUsers.append(UserModel(userName: userName, name: userName != "" ? userName : "Empty", surName: userName != "" ? "User" : "Line", password: password, avatar: "avatarDefault", location: "Default City", favGroups: [GroupModel(name: "Swift Education School", description: "Multi-paradigm, compiled programming language developed by Apple Inc. and the open-source community.", logo: "logo-swift", fullDescription: "", subscribersCount: 0)], photos: [PhotoModel(name: "", fileName: "avatarDefault", likeCount: 0, commentMessages: ["Cool!","Omg! ^-^","Fantastic!"], isLike: false)]))
        Storage.feedNews.insert(PostModel(author: Storage.allUsers[UserStorage.getIndexByUsername(username: userName)], timeStamp: "Now", text: "Wtf, how can i change my avatar?!", media: "defaultPost", likeCount: 0, commentMessages: [], isLike: false), at: 0)
    }
    
    func isUserInDB(userName: String) -> Bool {
        (Storage.allUsers.firstIndex(where: { $0.userName == userName }) != nil) ? true : false
    }
    
    func getIndexByUserName(userName: String) -> Int!  {
        Storage.allUsers.firstIndex(where: { $0.userName == userName })
    }
    
    func showLoginError() {
        let alter = UIAlertController(title: "Error", message: "Invalid username or password", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .destructive, handler: { [self]_ in
            loadingIndicatorOutlet.stopAnimating()
        })
        alter.addAction(action)
        
        present(alter, animated: true, completion: { [self] in
            loadingIndicatorOutlet.stopAnimating()
            passwordTextField.text = nil
        })
    }
    
    func showRegisterError(userName: String) {
        passwordTextField.text = nil
        let errorRegisterAlert = UIAlertController(
            title: "Registration failed",
            message: "Username \(userName) already registered. Type another username and repeat.", preferredStyle: .actionSheet)
        errorRegisterAlert.addAction(UIAlertAction(title: "Back", style: .destructive, handler: nil))
        self.present(errorRegisterAlert, animated: true, completion: nil)
    }
    
    func showRegisterInformation(userName: String) {
        let nameSurNameString = Storage.allUsers[getIndexByUserName(userName: userName)].name + " " + Storage.allUsers[getIndexByUserName(userName: userName)].surName
        let userNameString = Storage.allUsers[getIndexByUserName(userName: userName)].userName == "" ? "<Empty Line>" : Storage.allUsers[getIndexByUserName(userName: userName)].userName
        let passwordString = Storage.allUsers[getIndexByUserName(userName: userName)].password == "" ? "<Empty Line>" : Storage.allUsers[getIndexByUserName(userName: userName)].password
        let showRegisterInformationAlert = UIAlertController(
            title: "Registration complete!",
            message: """


Username: \(userNameString)
Password: \(passwordString)
Name: \(nameSurNameString)


Type username/password and repeat login.
""", preferredStyle: .alert)
        showRegisterInformationAlert.addAction(UIAlertAction(title: "Deal with it!", style: .default, handler:{_ in
        }))
        self.present(showRegisterInformationAlert, animated: true, completion: .some({
        }))
    }
    
    func showRegisterProcessAlert(userName: String) {
        let showRegisterProcessAlert = UIAlertController(
            title: "Almost done",
            message: "Username created. Please, correct your name and surname:", preferredStyle: .alert)
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
    
    func sortFriendsByName() {
        Storage.allUsers = Storage.allUsers.sorted(by: { $0.surName < $1.surName })
    }
    
    @objc func animateButtonError(animateview: UIView) {
        shakeAnimation(animateview: animateview)
        UIView.animateKeyframes(
            withDuration: 0.7,
            delay: 0,
            options: [],
            animations: {
                let originalColorButton = animateview.backgroundColor
                UIView.addKeyframe(withRelativeStartTime: 0,
                                   relativeDuration: 0,
                                   animations: {
                                    animateview.backgroundColor = .systemRed
                                   })
                
                UIView.addKeyframe(withRelativeStartTime: 0.2,
                                   relativeDuration: 0.1,
                                   animations: {
                                    animateview.transform = .identity
                                   })
                UIView.addKeyframe(withRelativeStartTime: 0.8,
                                   relativeDuration: 0.2,
                                   animations: {
                                    animateview.backgroundColor = originalColorButton
                                   })
            },
            completion: nil
        )
        
    }
    
    func shakeAnimation(animateview: UIView) {
        let animation = CABasicAnimation(keyPath: "position")
        animation.duration = 0.07
        animation.repeatCount = 2
        animation.autoreverses = true
        animation.fromValue = NSValue(cgPoint: CGPoint(x: animateview.center.x - 3, y: animateview.center.y))
        animation.toValue = NSValue(cgPoint: CGPoint(x: animateview.center.x + 3, y: animateview.center.y))
        
        animateview.layer.add(animation, forKey: "position")
    }
    
    private func setupCubeView() {
        scrollView.addSubview(cubeView)
        cubeView.alpha = 0.3
        
        NSLayoutConstraint.activate([
            cubeView.centerXAnchor.constraint(equalTo: loginWithAppleButton.centerXAnchor, constant: -16),
            cubeView.centerYAnchor.constraint(equalTo: loginWithAppleButton.bottomAnchor, constant: 160),
        ])
    }
    
    private func animationLogo() {
        let scale = CGAffineTransform(scaleX: 1.1, y: 1.1)
        
        cubeView.transform = CGAffineTransform(translationX: 0, y: 0).concatenating(scale)
        
        UIView.animate(withDuration: 1.0, delay: 0, usingSpringWithDamping: 0.5, initialSpringVelocity: 1, options: .curveEaseOut, animations: {
            self.cubeView.transform = .identity
        })
    }
}

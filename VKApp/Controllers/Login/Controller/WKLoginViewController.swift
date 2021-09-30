//
//  WKLoginViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 21.09.2021.
//

import UIKit
import WebKit

class WKLoginViewController: UIViewController {
    @IBOutlet var webView: WKWebView! {
        
        didSet{
            webView.navigationDelegate = self
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //webView.translatesAutoresizingMaskIntoConstraints = false
        var urlComponents = URLComponents()
        urlComponents.scheme = "https"
        urlComponents.host = "oauth.vk.com"
        urlComponents.path = "/authorize"
        urlComponents.queryItems = [
            URLQueryItem(name: "client_id", value: "7957369"),
            URLQueryItem(name: "display", value: "mobile"),
            URLQueryItem(name: "redirect_uri", value: "https://oauth.vk.com/blank.html"),
            URLQueryItem(name: "scope", value: "262150"),
            URLQueryItem(name: "response_type", value: "token"),
            URLQueryItem(name: "v", value: "5.131")
        ]
        
        let request = URLRequest(url: urlComponents.url!)
        print(request)
        webView.load(request)
        
        
    }
}


extension WKLoginViewController: WKNavigationDelegate {
    func webView(_ webView: WKWebView, decidePolicyFor navigationResponse: WKNavigationResponse, decisionHandler: @escaping (WKNavigationResponsePolicy) -> Void) {
        
        guard let url = navigationResponse.response.url, url.path == "/blank.html", let fragment = url.fragment  else {
            decisionHandler(.allow)
            return
        }
        
        let params = fragment
            .components(separatedBy: "&")
            .map { $0.components(separatedBy: "=") }
            .reduce([String: String]()) { result, param in
                var dict = result
                let key = param[0]
                let value = param[1]
                dict[key] = value
                return dict
            }
        
        let token = params["access_token"]
        let userID = params["user_id"]
        UserSession.shared.userId = Int(userID ?? "") ?? 0
        UserSession.shared.token = token ?? ""
        
        if token != nil {
            let storyBoard = UIStoryboard(name: "Main", bundle: nil)
            let loginViewController = storyBoard.instantiateViewController(withIdentifier: "LoginFormController") as! LoginFormController
            loginViewController.modalPresentationStyle = .fullScreen
            self.present(loginViewController, animated: true, completion: nil)
            print("---------------------------------------------------------")
            print("Token = ",UserSession.shared.token)
            print("UserID = ",UserSession.shared.userId)
            print("---------------------------------------------------------")
        }
        
        decisionHandler(.cancel)
    }
}


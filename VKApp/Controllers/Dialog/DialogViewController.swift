//
//  DialogViewController.swift
//  VKApp
//
//  Created by Boris Sobolev on 29.08.2021.
//

import UIKit

class DialogViewController: UIViewController {
    
    @IBOutlet var loadingImageViewOutlet: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        loadingImageViewOutlet.layer.sublayers?.removeAll()
        showAnimatingDotsInImageView()
    }
    
    override func viewWillLayoutSubviews() {
    }
    
    func showAnimatingDotsInImageView() {
        let lay = CAReplicatorLayer()
        lay.frame = CGRect(x: 0, y: 8, width: 15, height: 7) //yPos == 12
        let circle = CALayer()
        circle.frame = CGRect(x: 0, y: 0, width: 7, height: 7)
        circle.cornerRadius = circle.frame.width / 2
        circle.backgroundColor = UIColor(red: 110/255.0, green: 110/255.0, blue: 110/255.0, alpha: 1).cgColor//lightGray.cgColor //UIColor.black.cgColor
        lay.addSublayer(circle)
        lay.instanceCount = 3
        lay.instanceTransform = CATransform3DMakeTranslation(10, 0, 0)
        let anim = CABasicAnimation(keyPath: #keyPath(CALayer.opacity))
        anim.fromValue = 1.0
        anim.toValue = 0.2
        anim.duration = 1
        anim.repeatCount = .infinity
        circle.add(anim, forKey: nil)
        lay.instanceDelay = anim.duration / Double(lay.instanceCount)
        
        loadingImageViewOutlet.layer.addSublayer(lay)
    }
}

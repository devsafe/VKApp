//
//  Cube.swift
//  VKApp
//
//  Created by Boris Sobolev on 04.09.2021.
//

import UIKit

class Cube: UIView {
    private let cloudLayer = CAShapeLayer()
    private let cloudePath = CubePath.shape
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setup() {
        translatesAutoresizingMaskIntoConstraints = false
        frame = CGRect(x: 0, y: 0, width: 32, height: 32)
        
        let scale = CGSize(width: self.bounds.size.width / cloudePath.bounds.size.width, height: self.bounds.size.height / cloudePath.bounds.size.height)
        cloudePath.apply(CGAffineTransform(scaleX: scale.width, y: scale.height))
        cloudLayer.path = cloudePath.cgPath
        cloudLayer.lineWidth = 0.0
        cloudLayer.fillColor = UIColor.systemBlue.cgColor
        cloudLayer.strokeColor =  #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        cloudLayer.lineCap = .round
        cloudLayer.shadowColor = UIColor.white.cgColor
        cloudLayer.shadowOpacity = 0.3
        cloudLayer.shadowOffset = .zero
        cloudLayer.shadowRadius = 4
        self.layer.addSublayer(cloudLayer)
    }
    
    func animationStart() {
        
        cloudLayer.lineWidth = 2.0
        let duration: CFTimeInterval = 2
        let startAnimationStroke = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeStart))
        startAnimationStroke.fromValue = 0
        startAnimationStroke.toValue = 1
        //startAnimationStroke.duration = 3
        startAnimationStroke.beginTime = 0.1
        
        let endAnimationStroke = CABasicAnimation(keyPath: #keyPath(CAShapeLayer.strokeEnd))
        endAnimationStroke.fromValue = 0
        endAnimationStroke.toValue = 1
        
        let animationGroup = CAAnimationGroup()
        animationGroup.animations = [endAnimationStroke, startAnimationStroke]
        animationGroup.repeatCount = .infinity
        animationGroup.duration = duration
        
        cloudLayer.add(animationGroup, forKey: nil)
    }
    
    func animationStop() {
        cloudLayer.lineWidth = 0.0
        cloudLayer.removeAllAnimations()
    }
}

struct CubePath {
    static var shape: UIBezierPath {
        let path = UIBezierPath()
        path.move(to: CGPoint(x: 483.7, y: 101.8))
        path.addCurve(to: CGPoint(x: 483.4, y: 101.2), controlPoint1: CGPoint(x: 483.6, y: 101.6), controlPoint2: CGPoint(x: 483.5, y: 101.4))
        path.addCurve(to: CGPoint(x: 482.8, y: 99.9), controlPoint1: CGPoint(x: 483.2, y: 100.7), controlPoint2: CGPoint(x: 483.1, y: 100.3))
        path.addCurve(to: CGPoint(x: 482.3, y: 99.2), controlPoint1: CGPoint(x: 482.7, y: 99.6), controlPoint2: CGPoint(x: 482.5, y: 99.4))
        path.addCurve(to: CGPoint(x: 481.4, y: 98.2), controlPoint1: CGPoint(x: 482.1, y: 98.8), controlPoint2: CGPoint(x: 481.8, y: 98.5))
        path.addCurve(to: CGPoint(x: 480.8, y: 97.7), controlPoint1: CGPoint(x: 481.2, y: 98), controlPoint2: CGPoint(x: 481, y: 97.8))
        path.addCurve(to: CGPoint(x: 480.4, y: 97.4), controlPoint1: CGPoint(x: 480.7, y: 97.6), controlPoint2: CGPoint(x: 480.6, y: 97.4))
        path.addCurve(to: CGPoint(x: 479.5, y: 96.9), controlPoint1: CGPoint(x: 480.1, y: 97.2), controlPoint2: CGPoint(x: 479.8, y: 97))
        path.addCurve(to: CGPoint(x: 479.1, y: 96.6), controlPoint1: CGPoint(x: 479.3, y: 96.8), controlPoint2: CGPoint(x: 479.2, y: 96.7))
        path.addLine(to: CGPoint(x: 247.1, y: 0.6))
        path.addCurve(to: CGPoint(x: 240.9, y: 0.6), controlPoint1: CGPoint(x: 245.1, y: -0.2), controlPoint2: CGPoint(x: 242.9, y: -0.2))
        path.addLine(to: CGPoint(x: 8.9, y: 96.6))
        path.addCurve(to: CGPoint(x: 8.5, y: 96.9), controlPoint1: CGPoint(x: 8.8, y: 96.7), controlPoint2: CGPoint(x: 8.6, y: 96.8))
        path.addCurve(to: CGPoint(x: 7.5, y: 97.3), controlPoint1: CGPoint(x: 8.2, y: 97), controlPoint2: CGPoint(x: 7.8, y: 97.2))
        path.addCurve(to: CGPoint(x: 7.2, y: 97.7), controlPoint1: CGPoint(x: 7.4, y: 97.4), controlPoint2: CGPoint(x: 7.3, y: 97.6))
        path.addCurve(to: CGPoint(x: 6.6, y: 98.2), controlPoint1: CGPoint(x: 7, y: 97.8), controlPoint2: CGPoint(x: 6.8, y: 98))
        path.addCurve(to: CGPoint(x: 5.7, y: 99.2), controlPoint1: CGPoint(x: 6.2, y: 98.5), controlPoint2: CGPoint(x: 5.9, y: 98.8))
        path.addCurve(to: CGPoint(x: 5.2, y: 99.9), controlPoint1: CGPoint(x: 5.5, y: 99.4), controlPoint2: CGPoint(x: 5.3, y: 99.6))
        path.addCurve(to: CGPoint(x: 4.6, y: 101.2), controlPoint1: CGPoint(x: 4.9, y: 100.3), controlPoint2: CGPoint(x: 4.7, y: 100.7))
        path.addCurve(to: CGPoint(x: 4.3, y: 101.8), controlPoint1: CGPoint(x: 4.5, y: 101.4), controlPoint2: CGPoint(x: 4.4, y: 101.6))
        path.addCurve(to: CGPoint(x: 4, y: 104), controlPoint1: CGPoint(x: 4.1, y: 102.5), controlPoint2: CGPoint(x: 4, y: 103.3))
        path.addLine(to: CGPoint(x: 4, y: 384))
        path.addCurve(to: CGPoint(x: 8.9, y: 391.4), controlPoint1: CGPoint(x: 4, y: 387.2), controlPoint2: CGPoint(x: 6, y: 390.2))
        path.addLine(to: CGPoint(x: 240.9, y: 487.4))
        path.addCurve(to: CGPoint(x: 241.3, y: 487.5), controlPoint1: CGPoint(x: 241, y: 487.4), controlPoint2: CGPoint(x: 241.2, y: 487.4))
        path.addCurve(to: CGPoint(x: 244, y: 488), controlPoint1: CGPoint(x: 242.1, y: 487.8), controlPoint2: CGPoint(x: 243.1, y: 488))
        path.addCurve(to: CGPoint(x: 246.7, y: 487.5), controlPoint1: CGPoint(x: 244.9, y: 488), controlPoint2: CGPoint(x: 245.9, y: 487.8))
        path.addCurve(to: CGPoint(x: 247.1, y: 487.4), controlPoint1: CGPoint(x: 246.9, y: 487.4), controlPoint2: CGPoint(x: 247, y: 487.4))
        path.addLine(to: CGPoint(x: 479.1, y: 391.4))
        path.addCurve(to: CGPoint(x: 484, y: 384), controlPoint1: CGPoint(x: 482.1, y: 390.2), controlPoint2: CGPoint(x: 484, y: 387.2))
        path.addLine(to: CGPoint(x: 484, y: 104))
        path.addCurve(to: CGPoint(x: 483.7, y: 101.8), controlPoint1: CGPoint(x: 484, y: 103.3), controlPoint2: CGPoint(x: 483.9, y: 102.5))
        path.close()
        path.move(to: CGPoint(x: 236, y: 468))
        path.addLine(to: CGPoint(x: 20, y: 378.7))
        path.addLine(to: CGPoint(x: 20, y: 116))
        path.addLine(to: CGPoint(x: 236, y: 205.3))
        path.addLine(to: CGPoint(x: 236, y: 468))
        path.close()
        path.move(to: CGPoint(x: 244, y: 191.3))
        path.addLine(to: CGPoint(x: 32.9, y: 104))
        path.addLine(to: CGPoint(x: 244, y: 16.7))
        path.addLine(to: CGPoint(x: 455.1, y: 104))
        path.addLine(to: CGPoint(x: 244, y: 191.3))
        path.close()
        path.move(to: CGPoint(x: 468, y: 378.7))
        path.addLine(to: CGPoint(x: 252, y: 468))
        path.addLine(to: CGPoint(x: 252, y: 205.3))
        path.addLine(to: CGPoint(x: 468, y: 116))
        path.addLine(to: CGPoint(x: 468, y: 378.7))
        path.close()
        return path
    }
}

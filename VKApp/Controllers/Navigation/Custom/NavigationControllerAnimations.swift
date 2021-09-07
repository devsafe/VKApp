//
//  NavigationControllerAnimations.swift
//  VKApp
//
//  Created by Boris Sobolev on 07.09.2021.
//

import UIKit

class NavigationAnimations: UINavigationController, UINavigationControllerDelegate {
    
    let interactiveTransition = CustomInteractiveTransition()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.systemBackground
        delegate = self
    }
    
    func navigationController(
        _ navigationController: UINavigationController,
        interactionControllerFor animationController: UIViewControllerAnimatedTransitioning) -> UIViewControllerInteractiveTransitioning? {
        return interactiveTransition.hasStarted ? interactiveTransition : nil
    }
    
    func navigationController(_ navigationController: UINavigationController,
                              animationControllerFor operation: UINavigationController.Operation,
                              from fromVC: UIViewController,
                              to toVC: UIViewController)
    -> UIViewControllerAnimatedTransitioning? {
        
        if operation == .push {
            self.interactiveTransition.viewController = toVC
            return PushAnimator()
        } else if operation == .pop {
            if navigationController.viewControllers.first != toVC {
                self.interactiveTransition.viewController = toVC
            }
            return PopAnimator()
        }
        return nil
    }
    
    class PushAnimator: NSObject, UIViewControllerAnimatedTransitioning {
        
        private var animationDuration: TimeInterval = 0.5
        
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            return animationDuration
        }
        
        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            
            guard let source = transitionContext.viewController(forKey: .from) else { return }
            guard let destination = transitionContext.viewController(forKey: .to) else { return }
            
            transitionContext.containerView.addSubview(destination.view)
            transitionContext.containerView.sendSubviewToBack(destination.view)
            
            destination.view.layer.anchorPoint = CGPoint(x: 1, y: 0)
            destination.view.frame = transitionContext.containerView.frame
            destination.view.transform = CGAffineTransform(rotationAngle: -.pi/2)
            
            source.view.layer.anchorPoint = CGPoint(x: 0, y: 0)
            source.view.frame = transitionContext.containerView.frame
            
            UIView.animate(
                withDuration: animationDuration,
                delay: 0,
                usingSpringWithDamping: 0.55,
                initialSpringVelocity: 0.25,
                animations: {
                    source.view.transform = CGAffineTransform(rotationAngle: .pi/2)
                    destination.view.transform = .identity
                }) { (isComplete) in
                
                if transitionContext.transitionWasCancelled {
                    destination.view.transform = .identity
                }
                
                transitionContext.completeTransition( isComplete && !transitionContext.transitionWasCancelled)
            }
        }
    }
    
    class PopAnimator: NSObject, UIViewControllerAnimatedTransitioning {
        
        private var animationDuration: TimeInterval = 0.5
        
        func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
            return animationDuration
        }
        
        func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
            
            guard let source = transitionContext.viewController(forKey: .from) else { return }
            guard let destination = transitionContext.viewController(forKey: .to) else { return }
            
            transitionContext.containerView.addSubview(destination.view)
            transitionContext.containerView.sendSubviewToBack(destination.view)
            
            setAnchorPoint(anchorPoint: CGPoint(x: 0, y: 0), forView: destination.view)
            destination.view.frame = transitionContext.containerView.frame
            destination.view.transform = CGAffineTransform(rotationAngle: .pi/2)
            
            setAnchorPoint(anchorPoint: CGPoint(x: 1, y: 0), forView: source.view)
            source.view.frame = transitionContext.containerView.frame
            
            UIView.animate(
                withDuration: animationDuration,
                delay: 0,
                usingSpringWithDamping: 0.55,
                initialSpringVelocity: 0.25,
                animations: {
                    source.view.transform = CGAffineTransform(rotationAngle: -.pi/2)
                    destination.view.transform = .identity
                }) { (isComplete) in
                
                if isComplete && !transitionContext.transitionWasCancelled {
                    source.removeFromParent()
                } else if transitionContext.transitionWasCancelled {
                    destination.view.transform = .identity
                }
                transitionContext.completeTransition( isComplete && !transitionContext.transitionWasCancelled)
                destination.view.isHidden = false
            }
        }
        
        func setAnchorPoint(anchorPoint: CGPoint, forView view: UIView) {
            var newPoint = CGPoint(x: view.bounds.size.width * anchorPoint.x,
                                   y: view.bounds.size.height * anchorPoint.y)
            
            var oldPoint = CGPoint(x: view.bounds.size.width * view.layer.anchorPoint.x,
                                   y: view.bounds.size.height * view.layer.anchorPoint.y)
            
            newPoint = newPoint.applying(view.transform)
            oldPoint = oldPoint.applying(view.transform)
            
            var position = view.layer.position
            position.x -= oldPoint.x
            position.x += newPoint.x
            
            position.y -= oldPoint.y
            position.y += newPoint.y
            
            view.layer.position = position
            view.layer.anchorPoint = anchorPoint
        }
    }
}

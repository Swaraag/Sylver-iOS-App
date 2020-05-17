//
//  SlideInTransition.swift
//  SylverCompanion
//
//  Created by Swaraag Sistla on 5/16/20.
//  Copyright © 2020 Swaraag Sistla. All rights reserved.
//

import UIKit

class SlideInTransition: NSObject, UIViewControllerAnimatedTransitioning {
    
    var isPresenting = false
    
    func transitionDuration(using transitionContext: UIViewControllerContextTransitioning?) -> TimeInterval {
        return 0.3
    }
    
    func animateTransition(using transitionContext: UIViewControllerContextTransitioning) {
        guard let toVC = transitionContext.viewController(forKey: .to),
            let fromVC = transitionContext.viewController(forKey: .from) else { return }
        
        let containerView = transitionContext.containerView
        
        let finalWidth = toVC.view.bounds.width * 0.7
        let finalHeight = toVC.view.bounds.height
        
        if isPresenting {
            // Add menu view controller
            containerView.addSubview(toVC.view)
            
            // Initial frame of the screen
            
            toVC.view.frame = CGRect(x: -finalWidth, y: 0, width: finalWidth, height: finalHeight)
        }
        
        // Animate on screen
        let transform  = {
            toVC.view.transform = CGAffineTransform(translationX: finalWidth, y: 0)
        }
        
        // Animate off the screen
        
        let identity = {
            fromVC.view.transform = .identity
        }
        
        // Animation of the transition
        
        let duration = transitionDuration(using: transitionContext)
        
        let isCancelled = transitionContext.transitionWasCancelled
        
        UIView.animate(withDuration: duration, animations:  {
            self.isPresenting ? transform() : identity()
        }) { (_) in
            transitionContext.completeTransition(!isCancelled)
        }
        
    }

}

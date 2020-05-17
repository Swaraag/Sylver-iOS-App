//
//  HomePageVC.swift
//  SylverCompanion
//
//  Created by Swaraag Sistla on 5/16/20.
//  Copyright © 2020 Swaraag Sistla. All rights reserved.
//

import UIKit

class HomePageVC: UIViewController {
    
    let transition = SlideInTransition()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let dismissMenu = UITapGestureRecognizer(target: self.view, action: #selector(dismiss(animated: true)))
        //view.addGestureRecognizer(dismissMenu)

    }
    
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuVC = storyboard?.instantiateViewController(withIdentifier: "MenuVC") else { return }
        menuVC.modalPresentationStyle = .overCurrentContext
        menuVC.transitioningDelegate = self
        present(menuVC, animated: true)
    }

}

extension HomePageVC: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = true
        return transition
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transition.isPresenting = false
        return transition
    }
}

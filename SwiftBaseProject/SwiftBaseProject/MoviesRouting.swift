//
//  MoviesRouting.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class MoviesRouting: NSObject {

}

extension MoviesRouting: Routing {
    
    func search() {
        
    }
    
    func movieDetail(movie: Movie) {
        
    }
}

extension MoviesRouting {
    
    private func presentViewController(viewController: UIViewController) {
        
        UIApplication.topViewController()!.presentViewController(viewController, animated: true, completion: nil)
    }
    
    private func pushViewController(viewController: UIViewController) {
        
        // Push if there is a Navigation Controller
        if let navigationController = UIApplication.topViewController()?.parentViewController as? UINavigationController {
            navigationController.pushViewController(viewController, animated: true)
        } else { // If not, Present
            presentViewController(viewController)
        }
    }
}
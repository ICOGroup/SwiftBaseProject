//
//  RoutingImpl.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class RoutingImpl: NSObject {

}

extension RoutingImpl: Routing{
    
}

// Helper functions to present or push view controllers
extension RoutingImpl {
    
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
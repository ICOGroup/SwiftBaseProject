//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public class BasePageViewDataSource<U: UIViewController>: NSObject, BaseViewDataSource, UIPageViewControllerDataSource {

    public var items = [U]()
    
    override init() {
        super.init()
    }
    
    public func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        let viewControllers = items
        
        guard let viewControllerIndex = viewControllers.indexOf(viewController as! U) else {
            return nil
        }
        
        let nextIndex = viewControllerIndex + 1
        let orderedViewControllersCount = viewControllers.count
        
        guard orderedViewControllersCount != nextIndex else {
            return nil
        }
        
        guard orderedViewControllersCount > nextIndex else {
            return nil
        }
        
        return viewControllers[nextIndex]
    }
    
    public func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        
        let viewControllers = items
        
        guard let viewControllerIndex = viewControllers.indexOf(viewController as! U) else {
            return nil
        }
        
        let previousIndex = viewControllerIndex - 1
        
        guard previousIndex >= 0 else {
            return nil
        }
        
        guard viewControllers.count > previousIndex else {
            return nil
        }
        
        return viewControllers[previousIndex]
    }
}

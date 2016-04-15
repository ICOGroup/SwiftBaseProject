//
//  BasePresenter.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public class BasePresenter<V: BaseView>: NSObject {

    public let view: V
    public let router: Routing
    
    required public init(view: V, router: Routing){
        
        self.view = view
        self.router = router
    }
}

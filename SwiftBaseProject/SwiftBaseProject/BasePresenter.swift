//
//  BasePresenter.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class BasePresenter<V: BaseView>: NSObject {

    let view: V
    let router: Routing
    
    init(view: V, router: Routing){
        
        self.view = view
        self.router = router
    }
}

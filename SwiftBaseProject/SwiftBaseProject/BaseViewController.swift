//
//  BaseViewController.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/15/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class BaseViewController<V: BaseView>: UIViewController {
    
    var presenter: BasePresenter<V>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

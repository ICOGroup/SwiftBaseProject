//
//  MoviesListPresenter.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

class MoviesListPresenter<V: MoviesListView>: BasePresenter<V> {

    override init(view: V, router: Routing) {
        super.init(view: view, router: router)
    }
}

extension MoviesListPresenter: MoviesListActionListener{
    
    func searchAllMoviesWithString(string: String) {
        
    }
}

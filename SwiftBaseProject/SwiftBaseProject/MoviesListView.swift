//
//  MoviesListView.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol MoviesListView: BaseView {
    
    func displayMovies(movies: [Movie])
    
    func displayError(error: String)
}
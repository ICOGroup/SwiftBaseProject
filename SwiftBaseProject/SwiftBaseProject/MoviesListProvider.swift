//
//  MoviesListProvider.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol MoviesListProvider: BaseDataProvider {
    
    func queryForMoviesWithTitle(title: String)
}
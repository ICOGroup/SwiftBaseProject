//
//  MoviesListDataOutput.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol MoviesListDataOutput: BaseDataOutput {
    
    func moviesResult(movies: [Movie])
    
    func queryError(error: String)
}
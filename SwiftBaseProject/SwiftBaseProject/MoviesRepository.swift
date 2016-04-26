//
//  MoviesRepository.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol MoviesRepository: BaseRepository {
    
    func searchMovieWithTitle(title: String, response: (movies: [Movie]?, error: String?) -> ())
}

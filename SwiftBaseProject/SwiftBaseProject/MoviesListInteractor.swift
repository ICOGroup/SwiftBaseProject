//
//  MoviesListInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class MoviesListInteractor<O: MoviesListDataOutput, R: MoviesRepository>: BaseInteractor<O, R> {
    
    required init(dataOutput: O, repository: R) {
        super.init(dataOutput: dataOutput, repository: repository)
    }
    
}

extension MoviesListInteractor: MoviesListProvider{
    
    func queryForMoviesWithTitle(title: String) {
        
        repository.searchMovieWithTitle(title) { (movies, error) in
            
            guard let moviess = movies else {

                self.dataOutput.queryError(error!)
                return
            }
            
            //Remove entries that are Type == Game
            let filteredMovies = moviess.filter({ (m) -> Bool in
                
                return m.type == "movie"
            })
            
            self.dataOutput.moviesResult(filteredMovies)
        }
    }
}



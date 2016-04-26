//
//  MoviesRepositoryImpl.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON

class MoviesRepositoryImpl: NSObject {

    let UnknownError = "Unknown Error"
    
}

extension MoviesRepositoryImpl: MoviesRepository {
    
    func searchMovieWithTitle(title: String, response: (movies: [Movie]?, error: String?) -> ()) {
        
        Alamofire.request(MoviesAPI.Search(query: title))
            .responseJSON { (responseJSON) in
                
                switch(responseJSON.result){
                case .Success(let result):
                    
                    let json = JSON(result)
                    
                    let serverResponse = json["Response"].stringValue
                    if serverResponse == "False" {
                        
                        let err = json["Error"].stringValue
                        response(movies: nil, error: err)
                        return
                    }
                    
                    let movieArray = json["Search"].array
                    guard let mList = movieArray else {
                        response(movies: nil, error: self.UnknownError)
                        return
                    }
                    
                    var allMovies = [Movie]()
                    for mJson in mList {
                        allMovies.append(Movie.fromJson(mJson))
                    }
                    
                    response(movies: allMovies, error: nil)
                    break
                    
                case .Failure( _):
                    
                    response(movies: nil, error: self.UnknownError)
                    break
                }
                
        }
    }
}

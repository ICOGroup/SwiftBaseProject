//
//  Movie.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/20/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit
import SwiftyJSON

class Movie: NSObject {

    var title: String?
    var year: String?
    var released: String?
    var genre: String?
    var director: String?
    var actors: String?
    var plot: String?
    var awards: String?
    var poster: String?
    var imdbRating: String?
    var imdbID: String?
    var type: String?
    
    class func fromJson(json: JSON) -> Movie {
        
        let movie = Movie()
        movie.actors = json["Actors"].string
        movie.title = json["Title"].string
        movie.year = json["Year"].string
        movie.released = json["Released"].string
        movie.genre = json["Genre"].string
        movie.director = json["Director"].string
        movie.plot = json["Plot"].string
        movie.awards = json["Awards"].string
        movie.poster = json["Poster"].string
        movie.imdbRating = json["imdbRating"].string
        movie.type = json["Type"].string
        movie.imdbID = json["imdbID"].string
        
        return movie
    }
}

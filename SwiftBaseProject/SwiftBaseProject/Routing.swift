//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

//Declare here all view controller transitions
protocol Routing {
    
    func search()
    
    func movieDetail(movie: Movie)
}
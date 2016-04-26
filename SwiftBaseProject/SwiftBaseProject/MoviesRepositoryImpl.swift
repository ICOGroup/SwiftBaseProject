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

}

extension MoviesRepositoryImpl: MoviesRepository{
    
    func searchMovieWithTitle(title: String) {
        
        Alamofire.request(MoviesAPI.Search(query: title))
        .responseJSON { (responseJSON) in
            
            switch(responseJSON.result){
            case .Success(let result):
                
                let json = JSON(result)
                
                print(json)
                debugPrint(json)
                
                break
                
            case .Failure(let error):
                
                print("error: "+error.localizedDescription)
                break
            }

        }
    }
}

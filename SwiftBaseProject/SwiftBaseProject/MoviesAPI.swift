//
//  MoviesAPI.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation
import Alamofire

enum MoviesAPI: URLRequestConvertible {
    
    private static let BaseUrl = "http://www.omdbapi.com"
    
    case Search(query: String)
//    case Register(user: User)
//    case Login(user: User)
    
    var method: Alamofire.Method {
        switch self {
        case .Search:
            return .POST
        }
    }
    
    var path: String {
        switch self {
            
        case .Search:
            return ""
        }
    }
    
    var URLRequest: NSMutableURLRequest {
        
        let result: (path: String, parameters: [String: AnyObject]) = {
            switch self {
                
            case .Search(let query):
                return (path, ["s": query])
            }
        }()
        
        let URL = NSURL(string: MoviesAPI.BaseUrl)!
        let URLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(result.path))
        URLRequest.HTTPMethod = method.rawValue
        
        // set header fields
//        URLRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        let encoding = Alamofire.ParameterEncoding.URLEncodedInURL
        return encoding.encode(URLRequest, parameters: result.parameters).0
    }
}
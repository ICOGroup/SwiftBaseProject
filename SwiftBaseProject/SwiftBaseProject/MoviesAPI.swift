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
//        case .Register:
//            return .POST
//        case .Login:
//            return .POST
            //        case .ReadUser:
            //            return .GET
            //        case .UpdateUser:
            //            return .PUT
            //        case .DestroyUser:
            //            return .DELETE
        }
    }
    
    var path: String {
        switch self {
            
        case .Search:
            return ""
//        case .Register:
//            return "/api/users/register"
//        case .Login:
//            return "/api/users/token"
            //        case .ReadUser(let username):
            //            return "/users/\(username)"
            //        case .UpdateUser(let username, _):
            //            return "/users/\(username)"
            //        case .DestroyUser(let username):
            //            return "/users/\(username)"
        }
    }
    
    var URLRequest: NSMutableURLRequest {
        
        let result: (path: String, parameters: [String: AnyObject]) = {
            switch self {
                
            case .Search(let query):
                return (path, ["t": query])
//            case .Register(let user):
//                return (path, ["username": user.userName!, "password": user.password!, "activate": true])
//            case .Login(let user):
//                return (path, ["email": user.email!, "password": user.password!])
            }
        }()
        
        let URL = NSURL(string: MoviesAPI.BaseUrl)!
        let URLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(result.path))
        URLRequest.HTTPMethod = method.rawValue
        
        // set header fields
//        URLRequest.setValue("application/json", forHTTPHeaderField: "Accept")
//        URLRequest.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        let encoding = Alamofire.ParameterEncoding.URL
        return encoding.encode(URLRequest, parameters: result.parameters).0
    }
}
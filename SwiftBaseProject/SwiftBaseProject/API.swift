//
//  API.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/26/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation
import Alamofire

enum API: URLRequestConvertible {
    
    //TODO: Change for API's URL
    private static let BaseUrl = "http://www.omdbapi.com"
    
    case Register(user: User)
    case Login(user: User)
    case ChangePassword(user: User)
    
    var method: Alamofire.Method {
        switch self {
        case .Register:
            return .POST
        case .Login:
            return .POST
        case .ChangePassword:
            return .POST
        }
    }
    
    var path: String {
        switch self {
        
        //TODO: Update endpoints.
        case .Register:
            return "/user"
        case .Login:
            return "/user/login"
        case .ChangePassword(let user):
            return "/user/change_password/\(user.id)"
        }
    }
    
    var URLRequest: NSMutableURLRequest {
        
        let result: (path: String, parameters: [String: AnyObject]) = {
            switch self {
            
                //TODO: Update Parameters.
            case .Register(let user):
                return (path, [String: AnyObject]())
            case .Login(let user):
                return (path, [String: AnyObject]())
            case .ChangePassword(let user):
                return (path, [String: AnyObject]())
            }
            
        }()
        
        let URL = NSURL(string: API.BaseUrl)!
        let URLRequest = NSMutableURLRequest(URL: URL.URLByAppendingPathComponent(result.path))
        URLRequest.HTTPMethod = method.rawValue
        
        // set header fields
//        URLRequest.setValue("application/json", forHTTPHeaderField: "Accept")
        
        let encoding = Alamofire.ParameterEncoding.URLEncodedInURL
        return encoding.encode(URLRequest, parameters: result.parameters).0
    }
}
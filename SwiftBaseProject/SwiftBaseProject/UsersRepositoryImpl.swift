//
//  UsersRepositoryImpl.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class UsersRepositoryImpl: NSObject {
    
}

extension UsersRepositoryImpl: UsersRepository {
    
    func registerUser(user: User, response: (registeredUser: User, error: String?) -> ()) {
     
        Alamofire.request(API.Register(user: user))
        .responseJSON { (responseJSON) in
            
            switch(responseJSON.result){
            case .Success(let value):
                //TODO: Obtain data from response
                
                let jsonValue = JSON(value)
                let user = User(json: jsonValue["user"])
                
                response(registeredUser: user, error: nil)
                
            case .Failure(let error):
                
                response(registeredUser: User(), error: error.localizedDescription)
            }
        }
    }
    
    func loginUser(user: User, response: (loggedUser: User, error: String?) -> ()) {
        
        Alamofire.request(API.Login(user: user))
            .responseJSON { (responseJSON) in
                
                switch(responseJSON.result){
                case .Success(let value):
                    //TODO: Obtain data from response
                    
                    let jsonValue = JSON(value)
                    let user = User(json: jsonValue["user"])
                    
                    response(loggedUser: user, error: nil)
                    
                case .Failure(let error):
                    
                    response(loggedUser: User(), error: error.localizedDescription)
                }
        }
    }
    
    func changePasswordForUser(user: User, response: (success: Bool, error: String?) -> ()) {
        
        Alamofire.request(API.ChangePassword(user: user))
            .responseJSON { (responseJSON) in
                
                switch(responseJSON.result){
                case .Success(let value):
                    //TODO: Obtain data from response
                    
                    let jsonValue = JSON(value)
                    
                    response(success: true, error: nil)
                    
                case .Failure(let error):
                    
                    response(success: false, error: error.localizedDescription)
                }
        }
    }
}

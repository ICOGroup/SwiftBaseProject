//
//  UsersRepositoryFakeImpl.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class UsersRepositoryFakeImpl: NSObject {

}

extension UsersRepositoryFakeImpl: UsersRepository {
    
    func registerUser(user: User, response: (registeredUser: User, error: String?) -> ()) {
        response(registeredUser: User(), error: nil)
    }
    
    func loginUser(user: User, response: (loggedUser: User, error: String?) -> ()) {
        response(loggedUser: User(), error: nil)
    }
    
    func changePasswordForUser(user: User, response: (success: Bool, error: String?) -> ()) {
        response(success: true, error: nil)
    }
}
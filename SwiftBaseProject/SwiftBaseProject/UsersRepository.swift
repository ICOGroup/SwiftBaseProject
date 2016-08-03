//
//  UsersRepository.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol UsersRepository: BaseRepository {

    func registerUser(user: User, response: (registeredUser: User, error: String?) -> ())
    func loginUser(user: User, response: (loggedUser: User, error: String?) -> ())
    func changePasswordForUser(user: User, response: (success: Bool, error: String?) -> ())
}

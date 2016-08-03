//
//  LoginContract.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol LoginDataProvider: BaseDataProvider {
    
    func loginUser(user: User)
}

protocol LoginDataOutput: BaseDataOutput {
    
    func loginSuccess(user: User)
    func loginFailure(error: String)
}
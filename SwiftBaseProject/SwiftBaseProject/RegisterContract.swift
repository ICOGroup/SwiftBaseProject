//
//  RegisterContract.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol RegisterDataProvider: BaseDataProvider {
    
    func registerUser(user: User)
}

protocol RegisterDataOutput: BaseDataOutput {
    
    func registerSuccess(user: User)
    func registerFailure(error: String)
}
//
//  ChangePasswordContract.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

protocol ChangePasswordDataProvider: BaseDataProvider {
    
    func changePasswordForUser(user: User)
}

protocol ChangePasswordDataOutput: BaseDataOutput {
    
    func passwordChangeSuccess()
    func passwordChangeFailure(error: String)
}
//
//  LoginInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class LoginInteractor<O: LoginDataOutput, R: UsersRepository>: BaseInteractor<O, R> {
    
    required init(dataOutput: O, repository: R) {
        super.init(dataOutput: dataOutput, repository: repository)
    }
}

extension LoginInteractor: LoginDataProvider {
    
    func loginUser(user: User) {
        repository.loginUser(user) { (loggedUser, error) in
            
            if error != nil {
                self.dataOutput.loginFailure(error!)
                return
            }
            
            self.dataOutput.loginSuccess(loggedUser)
        }
    }
}

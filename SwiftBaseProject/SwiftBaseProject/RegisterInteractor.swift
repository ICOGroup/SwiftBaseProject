//
//  RegisterInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class RegisterInteractor<O: RegisterDataOutput, R: UsersRepository>: BaseInteractor<O, R> {

    required init(dataOutput: O, repository: R) {
        super.init(dataOutput: dataOutput, repository: repository)
    }
}

extension RegisterInteractor: RegisterDataProvider {
    
    func registerUser(user: User) {
        repository.registerUser(user) { (registeredUser, error) in
            
            if error != nil {
                self.dataOutput.registerFailure(error!)
                return
            }
            
            self.dataOutput.registerSuccess(registeredUser)
        }
    }
}

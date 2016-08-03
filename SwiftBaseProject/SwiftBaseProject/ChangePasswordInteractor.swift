//
//  ChangePasswordInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

class ChangePasswordInteractor<O: ChangePasswordDataOutput, R: UsersRepository>: BaseInteractor<O, R> {

    required init(dataOutput: O, repository: R) {
        super.init(dataOutput: dataOutput, repository: repository)
    }
}

extension ChangePasswordInteractor: ChangePasswordDataProvider {
    
    func changePasswordForUser(user: User) {
        repository.changePasswordForUser(user) { (success, error) in
            
            if success {
                self.dataOutput.passwordChangeSuccess()
                return
            }
            
            self.dataOutput.passwordChangeFailure(error!)
        }
    }
}


//
//  BaseInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

//Interactors represent UseCases, Each interactor does one thing only.
public class BaseInteractor<O: BaseDataOutput, R: BaseRepository>: NSObject {

    public let dataOutput: O
    public let repository: R
    
    required public init(dataOutput: O, repository: R){
        
        self.dataOutput = dataOutput
        self.repository = repository
    }
}

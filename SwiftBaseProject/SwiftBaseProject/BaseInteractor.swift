//
//  BaseInteractor.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

//Interactors represent UseCases, Each interactor does one thing only.
public class BaseInteractor<O: BaseDataOutput>: NSObject {

    public let dataOutput: O
    public let repository: BaseRepository
    
    required public init(dataOutput: O, repository: BaseRepository){
        
        self.dataOutput = dataOutput
        self.repository = repository
    }
}

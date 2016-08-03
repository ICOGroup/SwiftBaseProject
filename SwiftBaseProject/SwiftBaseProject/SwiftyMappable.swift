//
//  SwiftyMappable.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation
import SwiftyJSON

protocol SwiftyMappable {
    
    associatedtype ItemType
    
    init(json: JSON)
    static func fromJSONArray(json: [JSON]) -> [ItemType]
}
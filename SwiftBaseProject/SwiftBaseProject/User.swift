//
//  User.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 8/3/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit
import SwiftyJSON

class User: NSObject {

    var id: Int?
    var name: String?
    var email: String?
    var token: String?
    var password: String?           //Should be hashed
    
    override init() {
        
    }
    
    required init(json: JSON) {
        
        //Obtain values from json
//        id = json["id"].string
    }
}

extension User: SwiftyMappable {
    
    static func fromJSONArray(json: [JSON]) -> [User]{
        
        var users = [User]()
        
        return users
    }
}
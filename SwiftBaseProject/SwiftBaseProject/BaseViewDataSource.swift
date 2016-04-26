//
//  BaseTableViewDataSource.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

public protocol BaseViewDataSource {
    associatedtype ItemType
    
    var items: [ItemType] { get set }
}

public extension BaseViewDataSource {
    public func itemAtIndexPath(indexPath: NSIndexPath) -> ItemType {
        return items[indexPath.item]
    }
}
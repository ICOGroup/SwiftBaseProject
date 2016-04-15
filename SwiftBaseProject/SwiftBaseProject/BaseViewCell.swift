//
//  BaseTableViewCell.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import Foundation

public protocol BaseViewCell {
    static var identifier: String { get }
    
    typealias ItemType
    
    func configureItem(item: ItemType)
}

public extension BaseViewCell {
    public static var identifier: String { return String(Self) + "Identifier" }
}
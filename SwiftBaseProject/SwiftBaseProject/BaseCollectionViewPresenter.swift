//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public protocol BaseCollectionViewPresenter {
    associatedtype ItemType
    func onItemClick(item: ItemType, position: Int)
}

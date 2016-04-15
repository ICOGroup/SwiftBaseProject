//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public class BaseTableViewDelegate<T: BaseViewDataSource, U: BaseTableViewPresenter where T.ItemType == U.ItemType>: NSObject, UITableViewDelegate {
    let dataSource: T
    let presenter: U
    
    public init(dataSource: T, presenter: U) {
        self.dataSource = dataSource
        self.presenter = presenter
    }
    
    public func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        let item = dataSource.itemAtIndexPath(indexPath)
        presenter.onItemClick(item, position: indexPath.row)
    }
}


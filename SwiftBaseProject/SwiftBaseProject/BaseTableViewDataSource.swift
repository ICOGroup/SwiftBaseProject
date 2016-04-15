//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public class BaseTableViewDataSource<U, V: BaseViewCell where U == V.ItemType>: NSObject, UITableViewDataSource, BaseViewDataSource {
    public var items = [U]()
    
    override init() {
        super.init()
    }
    
    public func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier(V.identifier, forIndexPath: indexPath)
        let item = itemAtIndexPath(indexPath)
        (cell as! V).configureItem(item)
        return cell
    }
    
    public func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return items.count
    }
}

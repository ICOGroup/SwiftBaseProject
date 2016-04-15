//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//
import Foundation
import UIKit

public class BaseCollectionViewDataSource<U, V: BaseViewCell where U == V.ItemType>
: NSObject, UICollectionViewDataSource, BaseViewDataSource {
    public var items = [U]()
    
    public override init() {
        super.init()
    }
    
    public func collectionView(
        collectionView: UICollectionView,
        numberOfItemsInSection section: Int) -> Int {
            return items.count
    }
    
    public func collectionView(
        collectionView: UICollectionView,
        cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
            
            let cell = collectionView.dequeueReusableCellWithReuseIdentifier(
                V.identifier,
                forIndexPath: indexPath
            )
            let item = itemAtIndexPath(indexPath)
            (cell as! V).configureItem(item)
            return cell
    }
    
}
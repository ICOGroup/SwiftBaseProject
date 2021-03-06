//
//  Routing.swift
//  SwiftBaseProject
//
//  Created by Manuel Muñoz on 4/13/16.
//  Copyright © 2016 ICOgroup. All rights reserved.
//

import UIKit

public class BaseCollectionViewDelegate<T: BaseViewDataSource, U: BaseCollectionViewPresenter where T.ItemType == U.ItemType>: NSObject, UICollectionViewDelegateFlowLayout {
    
    internal let dataSource: T
    internal let presenter: U
    public init(dataSource: T, presenter: U) {
        self.dataSource = dataSource
        self.presenter = presenter
    }
    
    public func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        
        let item = dataSource.itemAtIndexPath(indexPath)
        presenter.onItemClick(item, position: indexPath.row)
    }
}

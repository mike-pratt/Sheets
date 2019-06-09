//
//  HomeViewControllerDelegate.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import Foundation
import UIKit

class HomeViewControllerDelegate: NSObject, UICollectionViewDelegateFlowLayout {
    
    var dataSource: HomeViewControllerDataSource!
    
    init(dataSource: UICollectionViewDataSource) {
        self.dataSource = dataSource as? HomeViewControllerDataSource
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: UIScreen.main.bounds.width, height: 0) // Height of cell should be done dynamically
//    }
}

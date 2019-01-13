//
//  ViewController.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController {

    var cvDelegate: HomeViewControllerDelegate?
    var cvDataSource: HomeViewControllerDataSource?
    var flowLayout: UICollectionViewFlowLayout?
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
        self.flowLayout = layout as? UICollectionViewFlowLayout
        self.flowLayout?.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 75)
        self.flowLayout?.estimatedItemSize = CGSize(width: UIScreen.main.bounds.width, height: 1)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupCollectionView()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    private func setupCollectionView() {
        collectionView.backgroundColor = AppConstants.homeBackgroundColor
        collectionView.alwaysBounceVertical = true
        cvDataSource = HomeViewControllerDataSource()
        cvDelegate = HomeViewControllerDelegate()
        collectionView.dataSource = cvDataSource
        collectionView.delegate = cvDelegate
        collectionView.register(DayOfWeekCollectionViewCell.self, forCellWithReuseIdentifier: AppConstants.todoItemCellId)
        collectionView.register(HomeHeaderCollectionViewReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AppConstants.homeHeaderViewId)
        print(AppConstants.homeHeaderViewId)
    }


}


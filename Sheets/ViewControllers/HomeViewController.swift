//
//  ViewController.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class HomeViewController: UICollectionViewController, ShowTodoDetailViewDelegateProtocol {

    var cvDelegate: HomeViewControllerDelegate?
    var cvDataSource: HomeViewControllerDataSource?
    var flowLayout: UICollectionViewFlowLayout?
    
    override init(collectionViewLayout layout: UICollectionViewLayout) {
        super.init(collectionViewLayout: layout)
        self.flowLayout = layout as? UICollectionViewFlowLayout
        self.flowLayout?.headerReferenceSize = CGSize(width: UIScreen.main.bounds.width, height: 75)
        self.flowLayout?.estimatedItemSize = CGSize(width: UIScreen.main.bounds.width, height: 100)
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
        
        // Not ideal way to do this, but can't figure out alternative way.
        // This is done so that the Home header reusable view can call the showDetailTodo delegate function.
        cvDataSource?.viewController = self
        cvDelegate = HomeViewControllerDelegate(dataSource: cvDataSource!)
        collectionView.dataSource = cvDataSource
        collectionView.delegate = cvDelegate
        collectionView.register(DayOfWeekCollectionViewCell.self, forCellWithReuseIdentifier: AppConstants.todoItemCellId)
        collectionView.register(HomeHeaderCollectionViewReusableView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: AppConstants.homeHeaderViewId)
    }
    
    func showTodoDetailView() {
        present(TodoDetailViewController(), animated: true, completion: nil)
    }


}


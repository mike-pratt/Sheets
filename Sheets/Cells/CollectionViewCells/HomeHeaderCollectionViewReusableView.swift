//
//  HomeHeaderCollectionViewCell.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class HomeHeaderCollectionViewReusableView: UICollectionReusableView, ViewSetupProtocol {
    
    let scheduleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.text = "Schedule"
        return label
    }()
    
    let subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 12)
        label.textColor = AppConstants.subtitleTextColor
        label.text = "Actions this week"
        return label
    }()
    
    let addTodoButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.backgroundColor = .gray
        button.layer.cornerRadius = 15
        button.clipsToBounds = true
        button.addTarget(self, action: #selector(showAddTodoModal), for: .touchUpInside)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    internal func setupView() {
        backgroundColor = AppConstants.homeBackgroundColor
        addSubview(scheduleLabel)
        addSubview(subtitleLabel)
        addSubview(addTodoButton)
        addConstraints()
    }
    
    internal func addConstraints() {
        scheduleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        scheduleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: scheduleLabel.bottomAnchor, constant: 0).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        
        addTodoButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        addTodoButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
    }
    
    @objc
    internal func showAddTodoModal() {
        print("Test todo item")
    }
}

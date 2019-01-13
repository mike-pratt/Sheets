//
//  DayOfWeekCollectionViewCell.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class DayOfWeekCollectionViewCell: UICollectionViewCell, ViewSetupProtocol {
    
    let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // view.backgroundColor = .red
        return view
    }()
    
    let dayLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.boldSystemFont(ofSize: 18)
        return label
    }()
    
    let dateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 10)
        label.textColor = AppConstants.subtitleTextColor
        return label
    }()
    
    let todoItemsStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
        stackView.spacing = 0.1
        return stackView
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
        addSubview(containerView)
        containerView.addSubview(dayLabel)
        containerView.addSubview(dateLabel)
        containerView.addSubview(todoItemsStackView)
        addConstraints()
    }
    
    internal func addConstraints() {
        containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor).isActive = true
        //containerView.bottomAnchor.constraint(equalTo: self.bottomAnchor).isActive = true
        
        dayLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 10).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        dateLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 0).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 20).isActive = true
        
        todoItemsStackView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 5).isActive = true
        todoItemsStackView.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        todoItemsStackView.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
       // todoItemsStackView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
        
         containerView.bottomAnchor.constraint(equalTo: todoItemsStackView.bottomAnchor).isActive = true
    }
}

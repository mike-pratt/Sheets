//
//  DayOfWeekCollectionViewCell.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class DayOfWeekCollectionViewCell: UICollectionViewCell, ViewSetupProtocol {
    
    lazy var width: NSLayoutConstraint = {
        let width = contentView.widthAnchor.constraint(equalToConstant: bounds.size.width)
        width.isActive = true
        return width
    }()
    
    let stackViewContainerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        // view.backgroundColor = .blue
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
        stackView.distribution = .fillEqually
        stackView.alignment = .fill
        stackView.spacing = 1
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
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.addSubview(dayLabel)
        contentView.addSubview(dateLabel)
        contentView.addSubview(stackViewContainerView)
        stackViewContainerView.addSubview(todoItemsStackView)
        addConstraints()
    }
    
    override func systemLayoutSizeFitting(_ targetSize: CGSize, withHorizontalFittingPriority horizontalFittingPriority: UILayoutPriority, verticalFittingPriority: UILayoutPriority) -> CGSize {
        width.constant = bounds.size.width
        return contentView.systemLayoutSizeFitting(CGSize(width: targetSize.width, height: 1))
    }
    
    internal func addConstraints() {
        dayLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        dateLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 0).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 20).isActive = true
        
        stackViewContainerView.topAnchor.constraint(equalTo: dateLabel.bottomAnchor, constant: 5).isActive = true
        stackViewContainerView.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 0).isActive = true
        stackViewContainerView.rightAnchor.constraint(equalTo: contentView.rightAnchor, constant: 0).isActive = true
        stackViewContainerView.heightAnchor.constraint(equalTo: todoItemsStackView.heightAnchor, multiplier: 1).isActive = true
        
        todoItemsStackView.topAnchor.constraint(equalTo: stackViewContainerView.topAnchor, constant: 1).isActive = true
        todoItemsStackView.leftAnchor.constraint(equalTo: stackViewContainerView.leftAnchor, constant: 1).isActive = true
        todoItemsStackView.rightAnchor.constraint(equalTo: stackViewContainerView.rightAnchor, constant: -1).isActive = true
        
        if let lastSubview = contentView.subviews.last {
            contentView.bottomAnchor.constraint(equalTo: lastSubview.bottomAnchor, constant: 10).isActive = true
        }
    }

}

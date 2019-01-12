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
        addConstraints()
    }
    
    internal func addConstraints() {
        scheduleLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        scheduleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        subtitleLabel.topAnchor.constraint(equalTo: scheduleLabel.bottomAnchor, constant: 5).isActive = true
        subtitleLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
    }
}

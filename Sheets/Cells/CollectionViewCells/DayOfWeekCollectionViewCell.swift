//
//  DayOfWeekCollectionViewCell.swift
//  Sheets
//
//  Created by Mike on 12/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class DayOfWeekCollectionViewCell: UICollectionViewCell, ViewSetupProtocol {
    
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
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    internal func setupView() {
        backgroundColor = AppConstants.homeBackgroundColor
        addSubview(dayLabel)
        addSubview(dateLabel)
        addConstraints()
    }
    
    internal func addConstraints() {
        dayLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        dateLabel.topAnchor.constraint(equalTo: dayLabel.bottomAnchor, constant: 0).isActive = true
        dateLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
    }
}

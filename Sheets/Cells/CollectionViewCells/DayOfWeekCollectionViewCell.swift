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
        label.text = "Monday"
        label.font = UIFont.boldSystemFont(ofSize: 18)
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
        addConstraints()
    }
    
    internal func addConstraints() {
        dayLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 10).isActive = true
        dayLabel.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
//        dayLabel.
    }
}

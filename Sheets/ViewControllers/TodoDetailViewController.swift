//
//  TodoDetailViewController.swift
//  Sheets
//
//  Created by Mike on 16/06/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import Foundation
import UIKit

class TodoDetailViewController : UIViewController {
    
    let contentLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Test 124 123"
        label.numberOfLines = 0
        label.textColor = .black
        return label
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(contentLabel)
        addConstraints()
    }
    
    private func addConstraints() {
        NSLayoutConstraint.activate([
            contentLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            contentLabel.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10),
            contentLabel.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10),
            contentLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -10),
        ])
    }
    
}

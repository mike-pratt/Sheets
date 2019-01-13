//
//  TodoItemView.swift
//  Sheets
//
//  Created by Michael Pratt on 13/01/2019.
//  Copyright © 2019 Mike Pratt dot IO. All rights reserved.
//

import UIKit

class TodoItemView: UIView, ViewSetupProtocol {
    
    let containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 5
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    let actionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 0
        label.text = "Test Action"
        label.font = UIFont.systemFont(ofSize: 16)
        label.textAlignment = .center
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
        addSubview(containerView)
        containerView.addSubview(actionLabel)
        addConstraints()
    }
    
    internal func addConstraints() {
        containerView.topAnchor.constraint(equalTo: self.topAnchor).isActive = true
        containerView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 20).isActive = true
        containerView.rightAnchor.constraint(equalTo: self.rightAnchor, constant: -20).isActive = true
        containerView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        // containerView.heightAnchor.constraint(equalToConstant: actionLabel.frame.size.height + 100).isActive = true
        
        actionLabel.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 0).isActive = true
        actionLabel.leftAnchor.constraint(equalTo: containerView.leftAnchor, constant: 0).isActive = true
        actionLabel.rightAnchor.constraint(equalTo: containerView.rightAnchor, constant: 0).isActive = true
        
        containerView.bottomAnchor.constraint(equalTo: actionLabel.bottomAnchor).isActive = true
    }
    

}

//
//  AdjectiveButton.swift
//  table-time
//
//  Created by NIL on 02.09.2025.
//

import UIKit

class AdjectiveCardView: UIView {
    private let titleLabel = UILabel()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code
        
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init( title: String) {
        super.init(frame: .zero)
        self.backgroundColor = .systemTeal
        layer.cornerRadius = 10
        translatesAutoresizingMaskIntoConstraints = false
        self.heightAnchor.constraint(equalToConstant: 100).isActive = true
        
        configureLabel(title)
    }
    private func configureLabel(_ title: String) {
        titleLabel.text = title
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.textColor = .white
        addSubview(titleLabel)
        NSLayoutConstraint.activate([
            titleLabel.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            titleLabel.centerYAnchor.constraint(equalTo: self.centerYAnchor)
        ])
    }
    
}


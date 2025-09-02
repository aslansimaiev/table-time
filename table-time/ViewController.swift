//
//  ViewController.swift
//  table-time
//
//  Created by NIL on 30.08.2025.
//

import UIKit

class ViewController: UIViewController {
    let cardsStack = UIStackView()
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Перетяніть асоціацію"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var confirmButton: UIButton = {
        let button = UIButton()
        button.setTitle("Підтвердити", for: .normal)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.backgroundColor = .red
        button.layer.cornerRadius = 15
        return button
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(titleLabel)
        view.addSubview(confirmButton)
        setUpConstraints()
        view.addSubview(cardsStack)
        cardsStack.axis = .vertical
        cardsStack.spacing = 20
        cardsStack.translatesAutoresizingMaskIntoConstraints = false
        for i in 1...5 {
            let rowStack = UIStackView()
            rowStack.distribution = .fillEqually
            rowStack.axis = .horizontal
            rowStack.spacing = 20
            rowStack.addArrangedSubview(NounCardView(title: "Button \(i)"))
            rowStack.addArrangedSubview(AdjectiveCardView(title: "Button \(i)"))
            
            cardsStack.addArrangedSubview(rowStack)
        }
        
        NSLayoutConstraint.activate([
            cardsStack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
            cardsStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            cardsStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),

        ])
                
        
    }
    
    
    func setUpConstraints () {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
            confirmButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            confirmButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            confirmButton.heightAnchor.constraint(equalToConstant: 70),
            confirmButton.bottomAnchor.constraint(lessThanOrEqualTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -10)
        ])
    }
    
}


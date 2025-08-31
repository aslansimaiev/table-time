//
//  ViewController.swift
//  table-time
//
//  Created by NIL on 30.08.2025.
//

import UIKit


final class CardsView: UIView {
    private let stack = UIStackView()

    init(texts: [String]) {
        super.init(frame: .zero)
        translatesAutoresizingMaskIntoConstraints = false

        stack.axis = .vertical
        stack.spacing = 16
        stack.translatesAutoresizingMaskIntoConstraints = false
        addSubview(stack)

        NSLayoutConstraint.activate([
            stack.topAnchor.constraint(equalTo: topAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        texts.forEach { stack.addArrangedSubview(makeCard(text: $0)) }
    }
    
   

    required init?(coder: NSCoder) { fatalError() }

    private func makeCard(text: String) -> UIView {
        let card = UIView()
        let gradientLayer = CAGradientLayer()
        card.backgroundColor = .red

        card.layer.insertSublayer(gradientLayer, at: 0)
        card.layer.cornerRadius = 12

        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.translatesAutoresizingMaskIntoConstraints = false

        card.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: card.topAnchor, constant: 20),
            label.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            label.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -20)
        ])
        return card
    }
}

class ViewController: UIViewController {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Перетяніть асоціацію"
        label.font = UIFont.systemFont(ofSize: 24, weight: .bold)
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(titleLabel)
        view.backgroundColor = .systemBackground
        setUpConstraints()
        let cards = CardsView(texts: ["Картка 1",
                                      "Картка 2",
                                      "Картка 3",
                                      "Картка 4",
                                      "Картка 5"
                                    ])
        view.addSubview(cards)
        NSLayoutConstraint.activate([
            cards.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 16),
            cards.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            cards.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16)
            // при необходимости прижми к низу или положи в scrollView
        ])

    }
    
    
    func setUpConstraints () {
        
        NSLayoutConstraint.activate([
            titleLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            titleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            titleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
            
        ])
    }
    
}


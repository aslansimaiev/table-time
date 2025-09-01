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
            stack.widthAnchor.constraint(equalToConstant: 150),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])

        texts.forEach { stack.addArrangedSubview(makeCard(text: $0)) }
    }
    
   

    required init?(coder: NSCoder) { fatalError() }

    private func makeCard(text: String) -> UIView {
        let card = UIView()
        card.backgroundColor = .red

        card.layer.cornerRadius = 12

        let label = UILabel()
        label.text = text
        label.font = .systemFont(ofSize: 18, weight: .medium)
        label.textColor = .white
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false

        card.addSubview(label)
        NSLayoutConstraint.activate([
            label.topAnchor.constraint(equalTo: card.topAnchor, constant: 40),
            label.leadingAnchor.constraint(equalTo: card.leadingAnchor, constant: 16),
            label.trailingAnchor.constraint(equalTo: card.trailingAnchor, constant: -16),
            label.bottomAnchor.constraint(equalTo: card.bottomAnchor, constant: -40)
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
        view.addSubview(titleLabel)
        view.backgroundColor = .systemBackground
        let hStack = UIStackView()
                hStack.axis = .horizontal
                hStack.alignment = .top
                hStack.distribution = .fillEqually   // колонки будут одинаковой ширины
                hStack.spacing = 16
                hStack.translatesAutoresizingMaskIntoConstraints = false
                view.addSubview(hStack)
        view.addSubview(confirmButton)
        setUpConstraints()

        let leftCards = CardsView(texts: ["Картка 1",
                                                  "Картка 2",
                                                  "Картка 3",
                                                  "Картка 4",
                                                  "Картка 5"])
                
                // Правая колонка
                let rightCards = CardsView(texts: ["Картка 6",
                                                   "Картка 7",
                                                   "Картка 8",
                                                   "Картка 9",
                                                   "Картка 10"])
        hStack.addArrangedSubview(leftCards)
        hStack.addArrangedSubview(rightCards)
        NSLayoutConstraint.activate([
                    hStack.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 30),
                    hStack.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
                    hStack.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
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


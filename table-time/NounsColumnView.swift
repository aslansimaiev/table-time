////
////  NounsColumnView.swift
////  table-time
////
////  Created by NIL on 01.09.2025.
////
//
//import UIKit
//
//final class NounsColumnView: UIView {
//    private let stack = UIStackView()
//    private var buttons: [UIButton] = []
//    
//    
//    init(titles: [String]) {
//        super.init(frame: .zero)
//        translatesAutoresizingMaskIntoConstraints = false
//        setupStack()
//        apply(titles: titles)
//    }
//    private func setupStack() {
//            stack.axis = .vertical
//            stack.alignment = .fill
//            stack.distribution = .fill
//            stack.spacing = 16
//            stack.translatesAutoresizingMaskIntoConstraints = false
//
//            addSubview(stack)
////            NSLayoutConstraint.activate([
////                stack.topAnchor.constraint(equalTo: topAnchor),
////                stack.leadingAnchor.constraint(equalTo: leadingAnchor),
////                stack.trailingAnchor.constraint(equalTo: trailingAnchor),
////                stack.bottomAnchor.constraint(lessThanOrEqualTo: bottomAnchor) // пока без жёсткой привязки вниз
////            ])
//        }
//    
//    private func apply(titles: [String]) {
//        buttons.forEach { $0.removeFromSuperview() }
//        buttons.removeAll()
//        
//        titles.forEach { title in
//            let button = NounButton(title: title)
//            buttons.append(button)
//            stack.addArrangedSubview(button)
//            button.widthAnchor.constraint(equalToConstant: 150).isActive = true
//            button.heightAnchor.constraint(equalToConstant: 100).isActive = true
//        }
//    }
//    
//    
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//}

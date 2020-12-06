//
//  Extentions.swift
//  Table
//
//  Created by Ankit.Agrawal on 04/07/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

extension Collection {
    subscript(safe index: Index) -> Element? {
        return indices.contains(index) ? self[index] : nil
    }
}

extension UIView {
    
    func addContentView(contentInsets: UIEdgeInsets = .zero) -> UIView {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.layer.masksToBounds = true
        view.clipsToBounds = true
        view.addShadow()
        addView(view: view)
        return view
    }
    
    func addView(view: UIView, contentInsets: UIEdgeInsets = .zero) {
        addSubview(view)
        NSLayoutConstraint.activate([
            view.topAnchor.constraint(equalTo: topAnchor, constant: contentInsets.top),
            view.bottomAnchor.constraint(equalTo: bottomAnchor, constant: contentInsets.bottom),
            view.leadingAnchor.constraint(equalTo: leadingAnchor, constant: contentInsets.left),
            view.trailingAnchor.constraint(equalTo: trailingAnchor, constant: contentInsets.right)
        ])
    }
    
    func addViews(from dictionary: [String: UIView]) {
        for (_, value) in dictionary {
            addSubview(value)
        }
    }
    
    func addShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowOpacity = 4
        clipsToBounds = false
    }
}

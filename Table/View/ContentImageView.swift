//
//  ContentImageView.swift
//  Table
//
//  Created by Ankit.Agrawal on 07/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

class ContentImageView: UIView, IContentView {
    
    typealias ContentData = ContentImageViewData

    private let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    private let imageView: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalTo: view.widthAnchor, multiplier: 1.0 / 1.0).isActive = true
        return view
    }()
    
    private lazy var button: UIButton = {
        let btn = UIButton(frame: .zero)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.target(forAction: Selector(("buttonTapped")), withSender: nil)
        return btn
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func initialSetup() {
        
        let contentView = addContentView()
        contentView.clipsToBounds = true
        
        let views = [
            "title": titleLabel,
            "image": imageView
        ]
        contentView.addViews(from: views)
        
        let metrics = ["regular": 16, "zero": 0]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-zero-[image]-zero-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-regular-[title]-regular-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-zero-[image]-zero-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-regular-[title]", options: [], metrics: metrics, views: views))
    }
    
    func show(with data: ContentData) {
        titleLabel.text = data.title
        imageView.image = data.image
    }
}

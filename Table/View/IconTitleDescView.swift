//
//  IconTitleDescView.swift
//  Table
//
//  Created by Ankit.Agrawal on 06/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

class TitleDescView: UIView, IContentView {
    
    typealias ContentData = TitleDescViewData

    private let titleLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 2
        return label
    }()
    
    private let descLabel: UILabel = {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.numberOfLines = 4
        return label
    }()
    
    private let icon: UIImageView = {
        let view = UIImageView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.heightAnchor.constraint(equalToConstant: 20).isActive = true
        view.widthAnchor.constraint(equalToConstant: 20).isActive = true
        return view
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
        
        let views = [
            "title": titleLabel,
            "desc": descLabel,
            "icon": icon
        ]
        contentView.addViews(from: views)
        
        let metrics = ["regular": 16]
        
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-regular-[icon]-regular-[title]-regular-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "H:|-regular-[desc]-regular-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-regular-[title]-regular-[desc]-regular-|", options: [], metrics: metrics, views: views))
        contentView.addConstraints(NSLayoutConstraint.constraints(withVisualFormat: "V:|-regular-[icon]", options: [], metrics: metrics, views: views))
    }
    
    func show(with data: ContentData) {
        titleLabel.text = data.title
        descLabel.text = data.desc
        icon.image = data.image
    }
}

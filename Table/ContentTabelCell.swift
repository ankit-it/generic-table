//
//  ContentTabelCell.swift
//  Table
//
//  Created by Ankit.Agrawal on 04/07/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

class ContentTabelCell<View: IContentView>: UITableViewCell, IContentTabelCell {

    let view: View = {
        let view = View(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    var contentInset: UIEdgeInsets {
        UIEdgeInsets(top: 16, left: 16, bottom: -16, right: -16)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        defaultSetup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func defaultSetup() {
        contentView.addView(view: view, contentInsets: contentInset)
    }

    
    func updateCell(with data: IContent) {
        guard let viewData = data as? View.ContentData else {
            print("Wrong mapping !")
            return
        }
        view.show(with: viewData)
    }
    
    static func reuseIdentifier() -> String {
        return String(describing: self)
    }
    
    static func registerForTable(tableView: UITableView) {
        tableView.register(self, forCellReuseIdentifier: reuseIdentifier())
    }
}

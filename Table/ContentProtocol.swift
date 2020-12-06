//
//  ContentProtocol.swift
//  Table
//
//  Created by Ankit.Agrawal on 06/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

// MARK: - Content
protocol IContent {
    
}

protocol IContentView where Self: UIView {
    
    associatedtype ContentData: IContent
    
    func show(with data: ContentData)
}

// MARK: - TableCell
protocol IContentTableCellData {

    var data: IContent { get }
    
    /// This is the place where model and view mapping is done.    
    var cellType: IContentTabelCell.Type { get }
}

extension IContentTableCellData where Self: IContent {
    var data: IContent {
        self
    }
}

protocol IContentTabelCell where Self: UITableViewCell {

    /// Insets for the content view
    var contentInset: UIEdgeInsets { get }
    
    func updateCell(with data: IContent)

    /// Method to setup cell with tye contentView
    func defaultSetup()
    
    /// Method to get the reuse identifier for the cell
    static func reuseIdentifier() -> String
    
    /// Method to register the cell for the table view passed as the parameter.
    /// - Parameter tableView: tableview to register the cell for,
    static func registerForTable(tableView: UITableView)
}

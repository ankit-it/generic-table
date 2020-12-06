//
//  ContentTableView.swift
//  Table
//
//  Created by Ankit.Agrawal on 06/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

class ContentTableView: UITableView {

    var tableData: [IContentTableCellData] = [] {
        didSet {
            tableData.forEach { register($0.cellType, forCellReuseIdentifier: $0.cellType.reuseIdentifier()) }
            reloadData()
        }
    }
    
    override init(frame: CGRect, style: UITableView.Style) {
        super.init(frame: frame, style: style)
        initialSetup()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        initialSetup()
    }
    
    func initialSetup() {
        translatesAutoresizingMaskIntoConstraints = false
        dataSource = self
        showsVerticalScrollIndicator = false
        showsHorizontalScrollIndicator = false
        backgroundColor = .clear
        allowsSelection = false
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = CGSize.zero
        layer.shadowOpacity = 0.3
        clipsToBounds = false
        separatorStyle = .none
        bounces = false
        accessibilityIdentifier = "content_table"
        estimatedRowHeight = UITableView.automaticDimension
    }
    
}

extension ContentTableView: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tableData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cellData = tableData[safe: indexPath.row],
            let cell = tableView.dequeueReusableCell(withIdentifier: cellData.cellType.reuseIdentifier()) as? IContentTabelCell else {
                return UITableViewCell()
        }
        cell.updateCell(with: cellData.data)
        return cell
    }
}

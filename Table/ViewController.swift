//
//  ViewController.swift
//  Table
//
//  Created by Ankit.Agrawal on 06/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let tableView = ContentTableView(frame: .zero, style: .plain)
    let service = NetworkService()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.addView(view: tableView)

        refreshData()
    }
    
    func refreshData() {
        let data: [IContentTableCellData] = service.getDataCell1() + service.getDataCell2()
        tableView.tableData = data
    }
}

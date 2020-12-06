//
//  ContentImageViewData.swift
//  Table
//
//  Created by Ankit.Agrawal on 05/07/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

protocol IContentImageViewData: IContent {
    var title: String { get }
    var image: UIImage? { get }
}

protocol IContentImageViewDelegate: class {
    func buttonTapped()
}

struct ContentImageViewData: IContentImageViewData {
    let title: String
    let imageName: String

    var image: UIImage? {
        UIImage(named: imageName)
    }
}

extension ContentImageViewData: IContentTableCellData {
    var cellType: IContentTabelCell.Type {
        ContentTabelCell<ContentImageView>.self
    }
}

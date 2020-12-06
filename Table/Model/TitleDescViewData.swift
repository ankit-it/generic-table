//
//  TitleDescViewData.swift
//  Table
//
//  Created by Ankit.Agrawal on 05/07/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import UIKit

protocol ITitleDescViewData: IContent {
    var title: String { get }
    var desc: String { get }
    var image: UIImage? { get }
}

struct TitleDescViewData: ITitleDescViewData {
    let title: String
    let desc: String
    let imageName: String

    var image: UIImage? {
        UIImage(named: imageName)
    }
}

extension TitleDescViewData: IContentTableCellData {
    var cellType: IContentTabelCell.Type {
        ContentTabelCell<TitleDescView>.self
    }
}

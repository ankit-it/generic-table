//
//  NetworkService.swift
//  Table
//
//  Created by Ankit.Agrawal on 07/06/20.
//  Copyright © 2020 Ankit.Agrawal. All rights reserved.
//

import Foundation

class NetworkService {
    func getDataCell1() -> [TitleDescViewData] {
        let data = [
            TitleDescViewData(title: "Fish", desc: "Description", imageName: "icons8-big-eats-small-100"),
            TitleDescViewData(title: "Lens", desc: "Description", imageName: "icons8-slr-small-lens-100"),
            TitleDescViewData(title: "Business", desc: "Description", imageName: "icons8-small-business-100"),
            TitleDescViewData(title: "Hearts", desc: "Description", imageName: "icons8-small-hearts-100")
        ]
        
        return data
    }
    
    func getDataCell2() -> [ContentImageViewData] {
        let data = [
            ContentImageViewData(title: "Dark blurred colors", imageName: "blur-bokeh-colors-dark-716656"),
            ContentImageViewData(title: "Illuminated christmas light", imageName: "defocused-image-of-illuminated-christmas-lights-255377"),
            ContentImageViewData(title: "Image of light", imageName: "defocused-image-of-lights-255379"),
            ContentImageViewData(title: "String of light", imageName: "photo-of-string-lights-749386")
        ]
        
        return data
    }
}

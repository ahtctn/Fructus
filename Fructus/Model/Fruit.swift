//
//  FruitModel.swift
//  Fructus
//
//  Created by Ahmet Ali ÇETİN on 17.01.2023.
//

import SwiftUI

struct Fruit: Identifiable {
    //MARK: FRUIT DATA MODELS
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String] 
}

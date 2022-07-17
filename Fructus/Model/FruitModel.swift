//
//  FruitModel.swift
//  Fructus
//
//  Created by Firat Polat on 16.07.2022.
//

import SwiftUI

//MARK: - FRUITS DATA MODEL

struct Fruit: Identifiable {
    var id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}



//
//  Model.swift
//  homework
//
//  Created by Тауекел on 15.05.2024.
//

import Foundation

struct Product: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let price: Int
    let description: String
    let nutritionalInfo: String
    var quantity: Int = 1
}

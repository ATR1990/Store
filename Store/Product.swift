//
//  Model.swift
//  homework
//
//  Created by Тауекел on 15.05.2024.
//

import Foundation

// MARK: - Products
struct Products: Codable {
    let products: [Product]
}

// MARK: - Product
struct Product: Identifiable, Codable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
    var description: String
    var nutritionalInfo: String
    var quantity: Int = 1

    enum CodingKeys: String, CodingKey {
        case name, image, price, description, nutritionalInfo
    }
}

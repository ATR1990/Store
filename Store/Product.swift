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
struct Product: Codable, Identifiable {
    var id: Int
    var name: String
    var image: String
    var price: Int
    var description: String?
    var nutritionalInfo: String?
    var quantity: Int = 1

    enum CodingKeys: String, CodingKey {
        case id, name, image, price, description, nutritionalInfo
    }
}

//{
//  "products": [
//    {
//      "id": 1,
//      "name": "Банан",
//      "image": "banana",
//      "price": 1000,
//      "description": "Свежий банан, выращенный на плантациях Эквадора.",
//      "nutritionalInfo": "Калории: 89, Белки: 1.1г, Жиры: 0.3г, Углеводы: 22.8г"
//    },
//    {
//      "id": 2,
//      "name": "Яблоко",
//      "image": "apple",
//      "price": 750,
//      "description": "Сочные и хрустящие яблоки сорта Фуджи.",
//      "nutritionalInfo": "Калории: 52, Белки: 0.3г, Жиры: 0.2г, Углеводы: 14г"
//    },
//    {
//      "id": 3,
//      "name": "Персик",
//      "image": "peach",
//      "price": 1500,
//      "description": "Сладкий и ароматный персик с нежной кожурой.",
//      "nutritionalInfo": "Калории: 39, Белки: 0.9г, Жиры: 0.3г, Углеводы: 9.5г"
//    },
//    {
//      "id": 4,
//      "name": "Арбуз",
//      "image": "watermelon",
//      "price": 150,
//      "description": "Освежающий арбуз, идеально подходящий для летней жары.",
//      "nutritionalInfo": "Калории: 30, Белки: 0.6г, Жиры: 0.2г, Углеводы: 7.6г"
//    },
//    {
//      "id": 5,
//      "name": "Клубника",
//      "image": "strawberry",
//      "price": 2000,
//      "description": "Сочная и сладкая клубника, собранная вручную.",
//      "nutritionalInfo": "Калории: 32, Белки: 0.7г, Жиры: 0.3г, Углеводы: 7.7г"
//    },
//    {
//      "id": 6,
//      "name": "Апельсин",
//      "image": "orange",
//      "price": 1700,
//      "description": "Сочный апельсин с богатым витамином C.",
//      "nutritionalInfo": "Калории: 47, Белки: 0.9г, Жиры: 0.1г, Углеводы: 11.8г"
//    }
//  ]
//}

// -----------------------------

//{
//  "products": [
//    {
//      "id": 1,
//      "name": "Банан",
//      "image": "banana",
//      "price": 1000
//    },
//    {
//      "id": 2,
//      "name": "Яблоко",
//      "image": "apple",
//      "price": 750
//    },
//    {
//      "id": 3,
//      "name": "Персик",
//      "image": "peach",
//      "price": 1500
//    },
//    {
//      "id": 4,
//      "name": "Арбуз",
//      "image": "watermelon",
//      "price": 150
//    },
//    {
//      "id": 5,
//      "name": "Клубника",
//      "image": "strawberry",
//      "price": 2000
//    },
//    {
//      "id": 6,
//      "name": "Апельсин",
//      "image": "orange",
//      "price": 1700
//    }
//  ]
//}

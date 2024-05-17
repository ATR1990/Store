//
//  CardList.swift
//  Store
//
//  Created by Тауекел on 16.05.2024.
//

//import SwiftUI
//
//struct CardList: View {
//    var products = [
//        Product(image: "banana", name: "Банан", price: 1000, description: "Свежий банан, выращенный на плантациях Эквадора.", nutritionalInfo: "Калории: 89, Белки: 1.1г, Жиры: 0.3г, Углеводы: 22.8г"),
//        Product(image: "apple", name: "Яблоко", price: 750, description: "Сочные и хрустящие яблоки сорта Фуджи.", nutritionalInfo: "Калории: 52, Белки: 0.3г, Жиры: 0.2г, Углеводы: 14г"),
//        Product(image: "peach", name: "Персик", price: 1500, description: "Сладкий и ароматный персик с нежной кожурой.", nutritionalInfo: "Калории: 39, Белки: 0.9г, Жиры: 0.3г, Углеводы: 9.5г"),
//        Product(image: "watermelon", name: "Арбуз", price: 150, description: "Освежающий арбуз, идеально подходящий для летней жары.", nutritionalInfo: "Калории: 30, Белки: 0.6г, Жиры: 0.2г, Углеводы: 7.6г"),
//        Product(image: "strawberry", name: "Клубника", price: 2000, description: "Сочная и сладкая клубника, собранная вручную.", nutritionalInfo: "Калории: 32, Белки: 0.7г, Жиры: 0.3г, Углеводы: 7.7г"),
//        Product(image: "orange", name: "Апельсин", price: 1700, description: "Сочный апельсин с богатым витамином C.", nutritionalInfo: "Калории: 47, Белки: 0.9г, Жиры: 0.1г, Углеводы: 11.8г")
//    ]
//    
//    @State private var selectedProduct: Product?
//    @State private var showDetail: Bool = false
//    
//    var body: some View {
//        VStack(spacing: 15) {
//            ForEach(products.indices, id: \.self) { number in
//                CardView(
//                    productImage: products[number].image,
//                    productName: products[number].name,
//                    unitPrice: products[number].price,
//                    onDetailsTap: {
//                        selectedProduct = products[number]
//                        showDetail = true
//                    }
//                )
//            }
//        }
//        .sheet(item: $selectedProduct) { product in
//            ProductDetailView(product: product)
//        }
//    }
//}
//
//struct Product: Identifiable {
//    let id = UUID()
//    let image: String
//    let name: String
//    let price: Int
//    let description: String
//    let nutritionalInfo: String
//}
//
//#Preview {
//    CardList()
//}

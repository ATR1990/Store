//
//  ContentView.swift
//  Store
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var products = [
        Product(name: "Банан", image: "banana", price: 1000, description: "Свежий банан, выращенный на плантациях Эквадора.", nutritionalInfo: "Калории: 89, Белки: 1.1г, Жиры: 0.3г, Углеводы: 22.8г"),
        Product(name: "Яблоко", image: "apple", price: 750, description: "Сочные и хрустящие яблоки сорта Фуджи.", nutritionalInfo: "Калории: 52, Белки: 0.3г, Жиры: 0.2г, Углеводы: 14г"),
        Product(name: "Персик", image: "peach", price: 1500, description: "Сладкий и ароматный персик с нежной кожурой.", nutritionalInfo: "Калории: 39, Белки: 0.9г, Жиры: 0.3г, Углеводы: 9.5г"),
        Product(name: "Арбуз", image: "watermelon", price: 150, description: "Освежающий арбуз, идеально подходящий для летней жары.", nutritionalInfo: "Калории: 30, Белки: 0.6г, Жиры: 0.2г, Углеводы: 7.6г"),
        Product(name: "Клубника", image: "strawberry", price: 2000, description: "Сочная и сладкая клубника, собранная вручную.", nutritionalInfo: "Калории: 32, Белки: 0.7г, Жиры: 0.3г, Углеводы: 7.7г"),
        Product(name: "Апельсин", image: "orange", price: 1700, description: "Сочный апельсин с богатым витамином C.", nutritionalInfo: "Калории: 47, Белки: 0.9г, Жиры: 0.1г, Углеводы: 11.8г")
            ]
    @State private var cart: [Product] = []
    @State private var selectedProduct: Product?
    
    var body: some View {
        TabView {
            NavigationView {
                List(products) { product in
                    ProductCardView(product: product)
                        .onTapGesture {
                            selectedProduct = product
                        }
                        .sheet(item: $selectedProduct) { product in
                            ProductDetailView(product: product/*, cart: $cart*/)
                        }
                }
                .navigationBarTitle("Продукты")
            }
            .tabItem {
                Image(systemName: "house")
                Text("Главная")
            }
            
            NavigationView {
                CartView(cart: $cart).navigationBarTitle("Корзина")
            }
            .tabItem {
                Image(systemName: "cart")
                Text("Корзина")
            }
        }
    }
}


//
//  ContentView.swift
//  Store
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var products: [Product] = []
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
                .onAppear {
                    fetchProducts()
                }
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
    
    func fetchProducts() {
        guard let url = URL(string: "https://mocki.io/v1/77ff6a97-f7b2-4370-af3c-a3dba5cf9bae") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(Products.self, from: data)
                    
                    DispatchQueue.main.async {
                        self.products = decodedResponse.products
                    }
                } catch {
                    print("Error decoding data: \(error)")
                }
            } else if let error = error {
                print("Error fetching data: \(error)")
            }
        }.resume()
    }
}


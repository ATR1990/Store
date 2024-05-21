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
    @State private var productDetails: Product?

    var body: some View {
        TabView {
            NavigationView {
                ScrollView {
                    VStack {
                        // Горизонтальный скролл
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 20) {
                                ForEach(products) { product in
                                    ProductCardView(product: product)
                                        .frame(width: UIScreen.main.bounds.width - 40) // Товар на всю ширину
                                        .onTapGesture {
                                            fetchProductDetails(for: product.id)
                                        }
                                        .sheet(item: $productDetails) { productDetails in
                                            ProductDetailView(product: productDetails)
                                        }
                                }
                            }
                            .padding([.horizontal, .top], 20) // Отступы сверху и по горизонтали
                            .padding(.bottom, 10) // Отступ снизу
                        }
                        .frame(height: 300) // Высота горизонтального скролла
                        
                        // Остальное содержимое
                        LazyVGrid(
                            columns: [
                                GridItem(.flexible(), spacing: 20),
                                GridItem(.flexible(), spacing: 20)
                            ],
                            spacing: 20
                        ) {
                            ForEach(products) { product in
                                ProductCardView(product: product)
                                    .onTapGesture {
                                        fetchProductDetails(for: product.id)
                                    }
                                    .sheet(item: $productDetails) { productDetails in
                                        ProductDetailView(product: productDetails)
                                    }
                            }
                        }
                        .padding(.horizontal)
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
                CartView(cart: $cart)
                    .navigationBarTitle("Корзина")
            }
            .tabItem {
                Image(systemName: "cart")
                Text("Корзина")
            }
        }
    }

    func fetchProducts() {
        guard let url = URL(string: "https://api.mocki.io/v2/m89gu1r6/productList") else {
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

    func fetchProductDetails(for productId: Int) {
        guard let url = URL(string: "https://api.mocki.io/v2/m89gu1r6/products/\(productId)") else {
            print("Invalid URL")
            return
        }

        URLSession.shared.dataTask(with: url) { data, response, error in
            if let data = data {
                do {
                    let decodedResponse = try JSONDecoder().decode(Product.self, from: data)
                    
                    DispatchQueue.main.async {
                        self.productDetails = decodedResponse
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

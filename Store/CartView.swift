//
//  CartView.swift
//  homework
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

struct CartView: View {
    @Binding var cart: [Product]
    @State private var isCheckingOut = false
    @State private var showValidationLoader = false
    
    var totalCost: Int {
        cart.reduce(0) { $0 + $1.price * $1.quantity }
    }
    
    var body: some View {
        VStack {
            if totalCost < 8000 {
                Text("Бесплатная доставка по г.Алматы заказов от 8000 ₸! Добавить \(8000 - totalCost) ₸")
                    .foregroundColor(.red)
                    .padding()
                    .background(Color.yellow)
                    .cornerRadius(10)
                    .padding(.horizontal)
            }
            
            List {
                ForEach(cart) { product in
                    HorizontalProductCardView(product: product)
                }
            }
            
            HStack {
                Text("Итого: \(totalCost) ₸")
                    .font(.title)
                Spacer()
                Button(action: {
                    showValidationLoader = true
                    DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                        showValidationLoader = false
                        isCheckingOut = true
                    }
                }) {
                    Text("Оформить заказ")
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                }
            }
            .padding()
            
            if showValidationLoader {
                ProgressView("Проверка корзины...")
                    .padding()
            }
        }
        .sheet(isPresented: $isCheckingOut) {
            Text("Hello World!")
                .font(.largeTitle)
        }
    }
}

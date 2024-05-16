//
//  CardView.swift
//  Store
//
//  Created by Тауекел on 16.05.2024.
//

import SwiftUI

struct CardView: View {
    @State private var quantity: Int = 0
    @State private var isFavorite: Bool = false
        
    let productImage: String
    let productName: String
    let minQuantity: Int = 1
    let unitPrice: Int
    
    var body: some View {
        VStack {
            // Фото продукта
            Image(productImage)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .clipped()
            
            // Название продукта и кнопка лайк
            ZStack {
                Text(productName)
                    .font(.headline)
                    .padding(.top, 5)
                
                HStack {
                    Spacer()
                    Button(action: {
                        isFavorite.toggle()
                    }) {
                        Image(systemName: isFavorite ? "heart.fill" : "heart")
                            .foregroundColor(isFavorite ? .red : .gray)
                            .font(.title2)
                    }
                }
                .padding(.horizontal)
            }
            
            // Цена за единицу добавляемого товара
            Text("Цена за 1 кг: \(unitPrice) ₸")
                .font(.subheadline)
                .foregroundColor(.gray)
            
            ZStack {
                HStack {
                    Spacer()
                    
                    // Кнопка добавления в корзину / управления количеством
                    if quantity == 0 {
                        Button(action: {
                            quantity = minQuantity
                        }) {
                            Text("Добавить в корзину - \(unitPrice * minQuantity) ₸")
                                .font(.subheadline)
                                .padding()
                                .background(Color.blue)
                                .foregroundColor(.white)
                                .cornerRadius(8)
                        }
                    } else {
                        HStack {
                            Button(action: {
                                if quantity > minQuantity {
                                    quantity -= 1
                                }
                            }) {
                                Image(systemName: "minus.circle")
                                    .foregroundColor(.red)
                                    .font(.title)
                            }
                            
                            Text("\(quantity)")
                                .font(.title)
                                .padding(.horizontal, 10)
                            
                            Button(action: {
                                quantity += 1
                            }) {
                                Image(systemName: "plus.circle")
                                    .foregroundColor(.green)
                                    .font(.title)
                            }
                        }
                        .padding(.vertical, 5)
                    }
                    
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom, 10)
            }
        }
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
        .padding()
    }
}

#Preview {
    CardView(productImage: "", productName: "", unitPrice: 0)
        .preferredColorScheme(.dark)
}

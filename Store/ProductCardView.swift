//
//  ProductCardView.swift
//  homework
//
//  Created by Тауекел on 17.05.2024.
//

import SwiftUI

struct ProductCardView: View {
    @State private var quantity: Int = 0
    @State private var isFavorite: Bool = false
    
    var product: Product
    let minQuantity: Int = 1
    
    var body: some View {
        ZStack(alignment: .topTrailing) {
            VStack {
                // Фото продукта
                Image(product.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 75)
                    .clipped()

                // Название продукта
                Text(product.name)
                    .font(.headline)
                    .padding(.top, 5)

                // Цена за единицу добавляемого товара
                Text("Цена за 1 кг")
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
                                HStack {
                                    Image(systemName: "cart")
                                    Text("\(product.price * minQuantity) ₸")
                                        .font(.subheadline)
                                }
                                .padding(8)
                                .frame(maxWidth: .infinity)
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
                            .frame(maxWidth: .infinity, alignment: .center)
                            
                        }
                    }
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 175)
            .padding()
            .background(Color.white)
            .cornerRadius(10)
            .shadow(radius: 5)

            // Кнопка лайк в верхнем правом углу карточки
            Button(action: {
                isFavorite.toggle()
            }) {
                Image(systemName: isFavorite ? "heart.fill" : "heart")
                    .foregroundColor(isFavorite ? .red : .gray)
                    .font(.title2)
            }
            .padding()
        }
    }
}

struct HorizontalProductCardView: View {
    var product: Product
    
    var body: some View {
        HStack {
            Text(product.name)
                .font(.headline)
            Spacer()
            Text("Qty: \(product.quantity)")
            Spacer()
            Text("\(product.price) ₸")
                .font(.subheadline)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
    }
}

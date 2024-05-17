//
//  ProductCardView.swift
//  homework
//
//  Created by Тауекел on 17.05.2024.
//

import SwiftUI

struct ProductCardView: View {
    var product: Product
    
    var body: some View {
        VStack {
            Text(product.name)
                .font(.headline)
            Text("\(product.price) ₸")
                .font(.subheadline)
        }
        .padding()
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
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
        .shadow(radius: 5)
    }
}

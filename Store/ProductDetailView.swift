//
//  ProductDetailView.swift
//  Store
//
//  Created by Тауекел on 17.05.2024.
//

import SwiftUI

struct ProductDetailView: View {
    let product: Product
    
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            Image(product.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 300)
                .clipped()
            
            Text(product.name)
                .font(.largeTitle)
                .padding(.top)
            
            Text("Цена за 1 кг: \(product.price) ₸")
                .font(.title)
            
            Text("Описание")
                .font(.headline)
            
            Text(product.description ?? "")
                .font(.body)
            
            Text("Пищевая ценность")
                .font(.headline)
            
            Text(product.nutritionalInfo ?? "")
                .font(.body)
            
            Spacer()
        }
        .padding()
    }
}

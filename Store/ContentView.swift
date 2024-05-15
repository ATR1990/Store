//
//  ContentView.swift
//  Store
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            ProductCard(
                productImage: "sampleImage",
                productName: "Sample Product",
                minQuantity: 1,
                unitPrice: 9.99
            )
            ProductCard(
                productImage: "sampleImage",
                productName: "Another Product",
                minQuantity: 2,
                unitPrice: 19.99
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

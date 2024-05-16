//
//  CardList.swift
//  Store
//
//  Created by Тауекел on 16.05.2024.
//

import SwiftUI

struct CardList: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 15)]
    var images = ["banana", "apple", "peach", "watermelon", "strawberry", "orange"]
    var titles = ["Банан", "Яблоко", "Персик", "Арбуз", "Клубника", "Апельсин"]
    var prices = ["1000 ₸", "750 ₸", "1500", "150 ₸", "2000 ₸", "1700 ₸"]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 15) {
            ForEach(0 ... 5, id: \.self) {number in
                CardView(image: images[number], 
                         title: titles[number],
                         price: prices[number])
            }
        }
    }
}

#Preview {
    CardList()
}

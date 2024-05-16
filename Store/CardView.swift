//
//  CardView.swift
//  Store
//
//  Created by Тауекел on 16.05.2024.
//

import SwiftUI

struct CardView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 15)]
    
    var image: String
    var title: String
    var price: String
    
    var body: some View {
        VStack(spacing: 8) {
            VStack {
                Image(image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 70, height: 70)
                    .padding(.horizontal, 0)
            }
            Text(title)
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.black)
                .lineLimit(2)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
            Text("Organic")
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
                .lineLimit(2)
                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .center)
            HStack {
                Text(price)
                    .font(.system(size: 20))
                    .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                
                Button {
                    
                } label: {
                    Image(systemName: "plus")
                        .font(.system(size: 12, weight: .bold))
                        .padding()
                        .background(Color("Purple"))
                        .cornerRadius(10)
                        .foregroundColor(.white)
                }
            }
        }
        .padding(16)
        .frame(height: 217, alignment: .top)
        .background(Color.white)
        .clipShape(RoundedRectangle(cornerRadius: 20, style: .continuous))
        .overlay(RoundedRectangle(cornerRadius: 20, style: .continuous)     .stroke(Color.white.opacity(0.2), lineWidth: 0.5)
            .blendMode(.overlay))
    }
}

#Preview {
    CardView(image: "", title: "", price: "")
        .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
}

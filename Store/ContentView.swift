//
//  ContentView.swift
//  Store
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                Color("BG")
                    .ignoresSafeArea()
                ScrollView {
                    VStack {
                        HeaderView()
                        VStack {
                            Text("Продукты")
                                .font(.title2)
                                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                                .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
                                .padding(.top, 15)
                                .padding()
                        }
                        VStack {
                            CardList()
                                .padding()
                        }
                    }
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

@ViewBuilder
func HeaderView() -> some View {
    HStack {
        VStack {
            Text("Главная")
                .font(.system(size: 33))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
        }
        .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: .leading)
    }
}


//
//  StoreApp.swift
//  Store
//
//  Created by Тауекел on 15.05.2024.
//

import SwiftUI

@main
struct StoreApp: App {
    // @UIApplicationDelegateAdaptor связывает ваш класс AppDelegate с UIKit
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}

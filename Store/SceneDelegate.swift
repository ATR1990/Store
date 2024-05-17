//
//  SceneDelegate.swift
//  homework
//
//  Created by Тауекел on 15.05.2024.
//

import UIKit
import SwiftUI

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Убедимся, что предоставленный UIScene действительно является UIWindowScene
        guard let windowScene = (scene as? UIWindowScene) else { return }

        // Создаем окно с использованием windowScene
        let window = UIWindow(windowScene: windowScene)
        
        // Создаем ContentView
        let contentView = ContentView()
        
        // Устанавливаем корневой ViewController
        window.rootViewController = UIHostingController(rootView: contentView)
        self.window = window
        window.makeKeyAndVisible()
    }
}

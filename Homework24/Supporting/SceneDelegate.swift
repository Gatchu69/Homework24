//
//  SceneDelegate.swift
//  Homework24
//
//  Created by Nodiko Gachava on 08.05.24.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {
    var window: UIWindow?
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let scene = (scene as? UIWindowScene) else { return }
        window = UIWindow(windowScene: scene)
        let vc = GalleryViewController()
        let navController = UINavigationController(rootViewController: vc)
        window?.rootViewController = navController
        window?.makeKeyAndVisible()
    }
}



//
//  SceneDelegate.swift
//  RxSwiftMVVMPractice
//
//  Created by 山田　天星 on 2022/06/17.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {

        guard let scene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: scene)
        self.window = window
        window.makeKeyAndVisible()
        let vc = ViewController()
        window.rootViewController = vc
        
    }
}


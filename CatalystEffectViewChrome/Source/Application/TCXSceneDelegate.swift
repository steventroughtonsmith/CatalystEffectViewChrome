//
//  TCXSceneDelegate.swift
//  TranslucentChrome
//
//  Created by Steven Troughton-Smith on 28/12/2021.
//  
//

import UIKit
import SwiftUI

class TCXSceneDelegate: UIResponder, UIWindowSceneDelegate {
	var window: UIWindow?
	
	func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
		guard let windowScene = scene as? UIWindowScene else {
			fatalError("Expected scene of type UIWindowScene but got an unexpected type")
		}
		window = UIWindow(windowScene: windowScene)
		
		if let window = window {
			
			let hc = UIHostingController(rootView:MainView())
			hc.view.backgroundColor = .clear
			hc.view.isOpaque = false
			
			window.rootViewController = hc
			
#if targetEnvironment(macCatalyst)
			
			windowScene.titlebar?.titleVisibility = .hidden
			
			TCXAppDelegate.appKitController?.perform(NSSelectorFromString("configureMainWindowForSceneIdentifier:"), with: windowScene.session.persistentIdentifier)
#endif
			
			window.makeKeyAndVisible()
		}
	}
}

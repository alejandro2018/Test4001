//
//  Test4001App.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI
import Firebase

@main
struct Test4001App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

class AppDelegate: NSObject, UIApplicationDelegate {
    
  func application(_ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {
      FirebaseApp.configure()
    return true
  }
}

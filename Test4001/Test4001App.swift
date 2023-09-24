//
//  Test4001App.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil
  ) -> Bool {

    return true
  }
}

@main
struct Test4001App: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var appDelegate
    @State var data = ViewModelOne()
     
     init(){
         FirebaseApp.configure()
     }

    var body: some Scene {
        WindowGroup {
            OneListNameView()
                .environment(data)
        }
        
    }
}

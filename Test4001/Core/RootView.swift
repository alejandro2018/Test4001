//
//  RootView.swift
//  Test4001
//
//  Created by Alejandro Fuenzalida on 03-11-23.
//

import SwiftUI

struct RootView: View {
    
    @State private var showSignView: Bool = false
    
    var body: some View {
        ZStack {
            if !showSignView {
                NavigationStack {
                    ProfileView(showSignInView: $showSignView)
                }
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignView = authUser == nil
            
        }
        .fullScreenCover(isPresented: $showSignView){
            NavigationStack {
                AuthenticationView(showSignInView: $showSignView)
            }
        }
    }
}

#Preview {
    RootView()
}

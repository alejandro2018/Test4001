//
//  OneListNameView.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI

struct OneListNameView: View {
    
    @State var navigated = false
    
    var body: some View {
                ZStack {
                    NavigationStack{
                    ScrollView {
                          VStack {
                                Text("List")
                                    .foregroundColor(.white)
                                    .font(.title)
                                    .bold()
                                    .padding()
                                Spacer()
                            }
                            .padding(.top, 100)
                        ForEach(OneName.exonename) { prueba in
                                    NavigationLink(value: prueba){
                                        OneNameView(nam: prueba.name1)
                                    }
                                }
                                .navigationDestination(for: OneName.self){ juego in
                                    viewForBrand(juego)
                                }
                    }
                    .padding(.bottom, 30)
                    }
                }
        .edgesIgnoringSafeArea(.top)
        
    }
    
    func viewForBrand(_ brand: OneName) -> AnyView {
        switch brand.name1 {
        case "One":
            return AnyView(SecondListView())
        case "Two":
            return AnyView(SecondListView())
        default:
            return AnyView(SecondListView())
        }
    }
    
}

#Preview {
    OneListNameView()
}

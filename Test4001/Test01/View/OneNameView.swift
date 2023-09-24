//
//  OneNameView.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI

struct OneNameView: View {
    
    @State var nam = ""
    
    var body: some View {
        VStack (alignment: .leading, spacing: 12){
            Text(nam)
                .font(.title3)
                .bold()
                .foregroundColor(Color.white)
        }
        .padding(.horizontal, 10)
        .frame(maxWidth: .infinity)
        .overlay(
            HStack{
                Rectangle()
                    .fill(Color.orange)
                    .padding(.vertical, -20)
                    .frame(width: 5)
                
                Spacer()
            }.frame(maxWidth: .infinity)
        )
        .padding(.vertical, 20)
        .background(Color(red: 8/255, green: 92/255, blue: 185/255).opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .shadow(color: Color.gray.opacity(0.2), radius: 15.0, x: 0, y: 0)
        .padding(.vertical, 10)
        .padding(.horizontal, 10)
    }
}

#Preview {
    OneNameView()
}

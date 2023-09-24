//
//  DetailsView.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI

struct DetailsView: View {
    
    var data: One
    
    var body: some View {
        VStack {
            Text(data.title)
                .font(.title)
                .fontWeight(.bold)
            Text(data.description)
                .font(.subheadline)
        }
    }
}

#Preview {
    DetailsView(data: One(title: "hello", description: "hello detail"))
}

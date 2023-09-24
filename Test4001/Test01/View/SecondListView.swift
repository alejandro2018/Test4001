//
//  SecondListView.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI
import FirebaseFirestore

struct SecondListView: View {
    
    @State var search = ""
    @Environment(ViewModelOne.self) private var data
    
    var body: some View {
            List {
                ForEach(self.data.datas.filter{(self.search.isEmpty ? true :    $0.title.localizedCaseInsensitiveContains(self.search))}, id: \.id) { rs in
                    NavigationLink(destination: DetailsView(data: rs)){
                        Text(rs.title)
                    }
                }
            }
            .onAppear(perform: self.data.getdata)
            .navigationTitle("Prueba Search")
            .searchable(text: $search)
            .textInputAutocapitalization(.never)

    }
}

#Preview {
    SecondListView()
}

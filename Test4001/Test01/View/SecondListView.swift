//
//  SecondListView.swift
//  Test4001
//
//  Created by Alejandro on 24-09-23.
//

import SwiftUI
import FirebaseFirestore

struct SecondListView: View {
    
    //var valor: String
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
            .task {
                data.datas = [] 
                data.getdata()
            }
            .navigationTitle("Prueba Search")
            .searchable(text: $search)
            .textInputAutocapitalization(.never)

    }
}

#Preview {
    SecondListView()
}

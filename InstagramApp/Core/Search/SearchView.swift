//
//  SearchView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 27/06/23.
//

import SwiftUI

struct SearchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationStack {
            ScrollView {
                LazyVStack(spacing: 15){
                    ForEach(0 ... 10, id: \.self) { user in
                        HStack {
                            Image("Marvel")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 60, height: 60)
                            .cornerRadius(40)
                            
                            VStack(alignment: .leading){
                                Text("Spiden-Man")
                                    .fontWeight(.semibold)
                                
                                Text("Homem-Aranha")
                                
                            }
                            .font(.footnote)
                            Spacer()
                        }
                        .padding(.leading)
                    }
                }
                .padding(.top)
                .searchable(text: $searchText, prompt: "Search...")
            }
            .navigationTitle("explore")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

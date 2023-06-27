//
//  SearchView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 27/06/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        ScrollView {
            LazyVStack{
                ForEach(0 ... 10, id: \.self) { user in
                    Image("Marvel")
                        .resizable()
                        .scaledToFill()
                        .frame(width: 60, height: 60)
                        .cornerRadius(40)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

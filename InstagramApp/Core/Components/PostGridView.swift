//
//  PostGridView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 29/06/23.
//

import SwiftUI

struct PostGridView: View {
    
    var post: [Post]
    
    var gridItems: [GridItem] = [
    
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    
    ]
    
    var imageDimension: CGFloat = (UIScreen.main.bounds.width / 2) - 1
    
    var body: some View {
        LazyVGrid(columns: gridItems, spacing: 0.5) {
            
            ForEach(0...11, id: \.self) { index in
                Image("Foto")
                    .resizable()
                    .aspectRatio(contentMode: .fill)
            }
        }

    }
}

struct PostGridView_Previews: PreviewProvider {
    static var previews: some View {
        PostGridView(post: Post.Mock_Posts)
    }
}

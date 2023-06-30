//
//  FeedView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 26/06/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        
        NavigationStack {
            
            
            ScrollView{
                LazyVStack(spacing: 24){
                    ForEach(Post.Mock_Posts) { post in
                        FeedCell(post: post)
                    }
                }
                .padding(.top)
            }
            .navigationTitle("Feed")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    Image("logo")
                        .resizable()
                        .frame(width: 100, height: 32 )
                }
                
                ToolbarItem(placement: .navigationBarTrailing){
                    
                    Button {
                        print("compartilhar")
                    } label: {
                        Image(systemName: "paperplane")
                            .imageScale(.large)
                            .foregroundColor(Color.black)
                    }

                    
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}

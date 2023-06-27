//
//  FeedCell.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 26/06/23.
//

import SwiftUI

struct FeedCell: View {
    var body: some View {
        VStack{
            //IMAGEM + USERNAME
            
            HStack(spacing: 20){
                
                Image("leonardo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 50, height: 50)
                    .cornerRadius(40)
                
                Text("Moreira")
                    .font(.system(size: 15))
                    .font(.footnote)
                    .bold()
                
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, 10)
            
            
            //POST IMAGE
            
            Image("Marvel")
                .resizable()
                .scaledToFill()
                .frame(height: 400)
                .clipShape(Rectangle())
            
            
            //Action Button
            
            HStack(spacing: 10){
               
                
                Button {
                    print("like")
                } label: {
                    Image(systemName: "heart")
                        .foregroundColor(Color.black)
                        .padding(.top, 1)
                        .padding(.leading, 10)
                }
                
                Button {
                    print("Comentar")
                } label: {
                    Image(systemName: "bubble.right")
                        .foregroundColor(Color.black)
                        .padding(.top, 1)
                        .padding(.leading, 10)
                }
                
                
                Button {
                    print("Compartilhar")
                } label: {
                    Image(systemName: "paperplane")
                        .foregroundColor(.black)
                        .padding(.top, 1)
                        .padding(.leading, 10)
                }

                .frame(maxWidth: .infinity, alignment: .leading)
                
               
            }
            //Likes label
            
            Text("60 likes")
                .font(.footnote)
                .fontWeight(.semibold)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 4)
                .padding(.leading, 10)
            
            //caption label
            
            HStack(spacing: 10){
            
                    Text("Moreira")
                        .fontWeight(.semibold) +
                
                 Text("Spider-Man")
                
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .font(.footnote)
            .padding(.top, 1)
            .padding(.leading, 10)
            
            
            Text("6h ago")
                .font(.footnote)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 4)
                .padding(.leading, 12)
                .foregroundColor(Color.gray)
           
        }
    }
}

struct FeedCell_Previews: PreviewProvider {
    static var previews: some View {
        FeedCell()
    }
}

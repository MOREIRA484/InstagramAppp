//
//  ProfileView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 26/06/23.
//

import SwiftUI

struct ProfileView: View {
    
    private var gridItems: [GridItem] = [
    
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1),
        .init(.flexible(), spacing: 1)
    
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                //HEADER
                
                VStack{
                    //PIC AND STATS
                    
                    HStack(spacing: 35){
                        Image("leonardo")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .aspectRatio(contentMode: .fill)
                            .frame(width: 90, height: 90)
                            .cornerRadius(60)
                        
                        HStack(spacing: 35){
                            UserStatView(value: 6, title: "Post")
                            
                            UserStatView(value: 104, title: "Followers")
                            
                            UserStatView(value: 6, title: "Following")
                        }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    
                    //NAME AND BIO
                    VStack(alignment: .leading, spacing: 5){
                        Text("Leonardo Moreira ")
                            .font(.footnote)
                            .bold()
                            
                        
                        Text("Moreira484")
                            .font(.caption)
                            .foregroundColor(Color.black)
                            .fontWeight(.semibold)
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding(.horizontal)
                    //BUTTON
                    
                    Button {
                        
                    } label: {
                        Text("Edit Profile")
                            .font(.subheadline)
                            .fontWeight(.semibold)
                            .frame(width: 360, height: 32)
                            .foregroundColor(Color.black)
                            .overlay(RoundedRectangle(cornerRadius: 6)
                            .stroke(Color.gray, lineWidth: 1))
                    }
                      Divider()
                }
                
                //post grid view
                
                LazyVGrid(columns: gridItems, spacing: 0.5) {
                    
                    ForEach(0...11, id: \.self) { index in
                        Image("Foto")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                    }
                }
            }
            .navigationTitle("Profile")
            .bold()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        ()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Color.black)
                    }
                    
                }
            }
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

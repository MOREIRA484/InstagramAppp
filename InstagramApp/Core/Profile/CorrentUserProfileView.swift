//
//  CorrentUserProfileView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import SwiftUI

struct CorrentUserProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.Mock_Posts.filter({ $0.user?.fullname == user.fullname })
    }
    
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
                
                PostGridView(post: posts)
            }
            .navigationTitle("Profile")
            .bold()
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        AuthService.shared.signout()
                    } label: {
                        Image(systemName: "line.3.horizontal")
                            .foregroundColor(Color.black)
                    }
                    
                }
            }
        }
    }
}



struct CorrentUserProfileView_Previews: PreviewProvider {
    static var previews: some View {
        CorrentUserProfileView(user: User.Mock_Users[0])
    }
}

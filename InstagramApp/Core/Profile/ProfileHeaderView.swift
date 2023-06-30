//
//  ProfileHeaderView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 29/06/23.
//

import SwiftUI

struct ProfileHeaderView: View {
    let user: User
    
    var body: some View {
        VStack{
            //PIC AND STATS
            
            HStack(spacing: 35){
                Image(user.profileImageUrl ?? "")
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
    }
}

struct ProfileHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeaderView(user: User.Mock_Users[1])
    }
}

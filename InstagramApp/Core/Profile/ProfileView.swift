//
//  ProfileView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 26/06/23.
//

import SwiftUI

struct ProfileView: View {
    
    let user: User
    
    var posts: [Post] {
        return Post.Mock_Posts.filter({ $0.user?.fullname == user.fullname })
    }

    
    var body: some View {
    
            ScrollView{
                //HEADER
                
                ProfileHeaderView(user: user)
                
                //post grid view
                
               PostGridView(post: posts)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView(user: User.Mock_Users [3])
        
    }
}

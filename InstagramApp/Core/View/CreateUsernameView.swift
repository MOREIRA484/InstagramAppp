//
//  CreateUsernameView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import SwiftUI

struct CreateUsernameView: View {
    @State private var username = ""
    var body: some View {
        VStack{
            Text("Create username")
                .font(.title2)
                .bold()
            
            Text("You'll use this email to sign in to your")
                .font(.footnote)
                .padding(.top, 1)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            
            VStack{
                TextField("Email", text: $username)
                
            }
            .padding(.top)
            .padding(.leading, 50)
            
            
            NavigationLink {
                CreatePasswordView()
            } label: {
                Text("Next")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 360, height: 40)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
            Spacer()

        }
    }
}

struct CreateUsernameView_Previews: PreviewProvider {
    static var previews: some View {
        CreateUsernameView()
    }
}

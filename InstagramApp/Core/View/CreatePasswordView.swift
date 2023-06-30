//
//  CreatePasswordView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import SwiftUI

struct CreatePasswordView: View {
    @State private var password = ""
    var body: some View {
        VStack{
            Text("Create a password")
                .font(.title2)
                .bold()
            
            Text("You'll use this email to sign in to your")
                .font(.footnote)
                .padding(.top, 1)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            
            VStack{
                TextField("Password", text: $password)
                
            }
            .padding(.top)
            .padding(.leading, 50)
            
            
            NavigationLink {
                CompleteSingUpView()
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

struct CreatePasswordView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePasswordView()
    }
}

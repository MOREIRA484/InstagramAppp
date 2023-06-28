//
//  addEmailView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 27/06/23.
//

import SwiftUI

struct addEmailView: View {
    @State var email = ""
    var body: some View {
        VStack{
            Text("Add your email")
                .font(.title2)
                .bold()
            
            Text("You'll use this email to sign in to your")
                .font(.footnote)
                .padding(.top, 1)
                .foregroundColor(Color.gray)
                .multilineTextAlignment(.center)
            
            VStack{
                TextField("Username", text: $email)
                
            }
            .padding(.top)
            .padding(.leading, 50)
            
            
            NavigationLink {
               CreateUsernameView()
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

struct addEmailView_Previews: PreviewProvider {
    static var previews: some View {
        addEmailView()
    }
}

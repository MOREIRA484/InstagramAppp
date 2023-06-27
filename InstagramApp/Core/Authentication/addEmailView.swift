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
                TextField("Email", text: $email)
                
            }
            .padding(.top)
            .padding(.leading, 50)
            
            
            Button {
                print("NEXT")
            } label: {
                Text("Next")
                    .frame(width: 340, height: 40)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(10)
            }
            .padding(.top)
            Spacer()

        }
    }
}

struct addEmailView_Previews: PreviewProvider {
    static var previews: some View {
        addEmailView()
    }
}

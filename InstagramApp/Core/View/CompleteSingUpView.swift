//
//  CompleteSingUpView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import SwiftUI

struct CompleteSingUpView: View {
    var body: some View {
        VStack{
            Text("Welcome to Instagram, leonardo.moreira ")
                .font(.title2)
                .bold()
            
            Text("Click below to complete registration and start using Intagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.top, 1)
                .foregroundColor(Color.gray)
                
            
            
            
            Button{
                print("Complete sign Up")
            } label: {
                Text("Complete Sing Up")
                    .font(.subheadline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.white)
                    .frame(width: 360, height: 40)
                    .background(Color(.systemBlue))
                    .cornerRadius(10)
            }
            .padding(.vertical)
          

        }

    }
}

struct CompleteSingUpView_Previews: PreviewProvider {
    static var previews: some View {
        CompleteSingUpView()
    }
}

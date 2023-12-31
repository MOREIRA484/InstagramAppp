//
//  CompleteSingUpView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import SwiftUI

struct CompleteSingUpView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var viewModel: registroViewModel
    var body: some View {
        VStack{
            Text("Welcome to Instagram, \(viewModel.username)")
                .font(.title2)
                .bold()
            
            Text("Click below to complete registration and start using Intagram")
                .font(.footnote)
                .multilineTextAlignment(.center)
                .padding(.top, 1)
                .foregroundColor(Color.gray)
                
            
            
            
            Button{
                Task { try await viewModel.createrUser() }
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

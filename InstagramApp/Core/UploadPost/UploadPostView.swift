//
//  UploadPostView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 30/06/23.
//

import SwiftUI
import PhotosUI

struct UploadPostView: View {
    
    @State private var caption = ""
    @State private var imagePickerPresented = false
    @StateObject var viewModel = UploadPostViewModel()
    var body: some View {
        VStack{
            
            //ACTION TOOL BAR
            HStack{
                Button {
                    print("Cancel upload")
                } label: {
                    Text("Cancel")
                }
                Spacer()
                
                Text("New Post")
                    .fontWeight(.semibold)
                
                Spacer()
                
                Button {
                    print("Upload")
                } label: {
                    Text("Upload")
                        .fontWeight(.semibold)
                }
                
            }
            .padding(.horizontal)
            
            
            // POST IMAGE AND CAPTION
            HStack(spacing: 8){
                Image("foto3")
                    .resizable()
                    
                    .frame(width: 100, height: 100)
                
                TextField("Enter your caption", text: $caption)
            }
            .padding()
            Spacer()
        }
        .onAppear {
            imagePickerPresented.toggle()
        }
        .photosPicker(isPresented: $imagePickerPresented, selection: $viewModel.selectedImage)
       
    }
}

struct UploadPostView_Previews: PreviewProvider {
    static var previews: some View {
        UploadPostView()
    }
}

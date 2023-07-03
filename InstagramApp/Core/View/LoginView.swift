//
//  LoginView.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 27/06/23.
//

import SwiftUI

struct LoginView: View {
    @State var email = ""
    @State var password = ""
   
    var body: some View {
        NavigationStack {
            
            VStack{
                
               Spacer()
                //MARK: LOGO Image
                Image("logo")
                    .resizable()
                    .scaledToFill()
                    .frame(width: 220, height: 50)
               
                VStack{
                    //MARK: LOGIN E SENHA
                    TextField("Enter your email", text: $email)
                        
                    SecureField("Password", text: $password)
                        .font(.subheadline)
                        .padding(.top, 12)
                }
                .padding(.top, 30)
                .padding(.leading, 30)
                
                    Button {
                        print("Forgot Password")
                    } label: {
                        Text("Forgout password")
                            
                    }
                    .frame(width: 350, alignment: .trailing)
                    .bold()
                    .font(.footnote)
                    .padding(.top)
                    
                    //MARK: FORGOUT PASSWORD
                    
                
                
                //MARK: BUTTON login IN
                
                    Button {
                        print("Log In")
                    } label: {
                        Text("login In")
                            .foregroundColor(.white)
                            .frame(width: 360, height: 40)
                            .background(Color(.systemBlue))
                            .cornerRadius(10)
                    }
                    
                    .padding(.top)
                    
                    
                    
                    HStack{
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                        
                        Text("OR")
                            .font(.footnote)
                           
                        
                        Rectangle()
                            .frame(width: (UIScreen.main.bounds.width / 2) - 40, height: 0.5)
                    }
                    .foregroundColor(Color.gray)
                    .padding(.top)
                    //MARK: BUTTON Continue with Facebook
                    
                    
                    HStack{
                        Image(systemName: "gear")
                        
                        Text("Continue with Facebook")
                    }
                    .foregroundColor(Color(.systemBlue))
                    .font(.footnote)
                    .bold()
                    .padding(.top)
                    
                    Spacer()
                    Divider()
                    
                    NavigationLink {
                        addEmailView()
                            
                            .navigationBarBackButtonHidden(true)
                    } label: {
                        HStack{
                            Text("Dont't have an account?")
                            
                            Text("Sign up")
                        }
                        .font(.footnote)
                    }
                    .padding(.vertical, 16)
                
            }
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

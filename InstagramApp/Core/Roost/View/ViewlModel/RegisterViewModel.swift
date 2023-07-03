//
//  RegisterViewModel.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 02/07/23.
//

import Foundation

class registroViewModel: ObservableObject {
    @Published var username = ""
    @Published var email = ""
    @Published var password = ""
   
    
    func createrUser()  async throws {
        try await AuthService.shared.createrUser(email: email, password: password, username: username)
    }
}

//
//  AuthService.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 30/06/23.
//

import Foundation
import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createrUser(email: String, password: String, username: String) async throws {
        do {
            let result = try await Auth.auth().createUser(withEmail: email, password: password)
            self.userSession = result.user
        } catch {
            print("Debug: Failed to register user with error \(error.localizedDescription)")

        }
    }
    
    func loadUserData() async throws {
        
    }
    func signout() {
        try? Auth.auth().signOut()
        self.userSession = nil
    }
}
    

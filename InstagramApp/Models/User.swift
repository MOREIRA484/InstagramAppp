//
//  User.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 28/06/23.
//

import Foundation

struct User: Identifiable, Codable{
    
    let id: String
    var username: String
    var profileImageUrl: String?
    var fullname: String
    var bio: String?
    let email: String
}

extension User {
    static var Mock_Users: [User] = [
        .init(id: NSUUID().uuidString, username: "Hulk", profileImageUrl: "foto1", fullname: "HULK", bio: "O INCRÍVEL HULK" , email: "Hulk@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Dog", profileImageUrl: "foto2", fullname: "Dog", bio: "O INCRÍVEL Dog" , email: "Dog@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Fantasma", profileImageUrl: "foto3", fullname: "Mascarado123", bio: "O MASCARADO" , email: "mascarado@gmail.com"),
        
        .init(id: NSUUID().uuidString, username: "Coringa_", profileImageUrl: "foto4", fullname: "Coringa", bio: "QUEM RI POR ULTIMO RI MELHOR" , email: "Coringa@gmail.com")
    ]
}

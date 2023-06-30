//
//  Post.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 29/06/23.
//

import Foundation


struct Post: Identifiable, Hashable, Codable {
    let id: String
    let ownerUid: String
    let caption: String
    var likes: Int
    let imageUrl: String
    let TimesTamp: Date
    var user: User?
}

extension Post {
    static var Mock_Posts: [Post] = [
        .init( id: NSUUID().uuidString,
              ownerUid: NSUUID().uuidString,
              caption: "This is come Test caption for now",
              likes: 1000,
              imageUrl: "leonardo",
               TimesTamp: Date(),
               user: User.Mock_Users[3]
               ),
        
            .init( id: NSUUID().uuidString,
                    ownerUid: NSUUID().uuidString,
                    caption: "fanstasma",
                    likes: 130,
                    imageUrl: "foto3",
                    TimesTamp: Date(),
                    user: User.Mock_Users[2]
        ),
                .init( id: NSUUID().uuidString,
                    ownerUid: NSUUID().uuidString,
                    caption: "HULK",
                    likes: 700,
                    imageUrl: "foto1",
                    TimesTamp: Date(),
                    user: User.Mock_Users[0]
            ),
                    .init( id: NSUUID().uuidString,
                        ownerUid: NSUUID().uuidString,
                        caption: "Coringa",
                        likes: 889,
                        imageUrl: "foto4",
                        TimesTamp: Date(),
                        user: User.Mock_Users[4]
                ),
        
                    .init( id: NSUUID().uuidString,
                           ownerUid: NSUUID().uuidString,
                           caption: "Dog",
                           likes: 540,
                           imageUrl: "Foto2",
                           TimesTamp: Date(),
                           user: User.Mock_Users[1]
                )]
               
}

//
//  ContentViewModel.swift
//  InstagramApp
//
//  Created by leonardo Moreira on 30/06/23.
//

import Foundation
import Firebase
import Combine

@MainActor

class ContentViewModel: ObservableObject {
    private let service = AuthService.shared
    private var cancellables = Set<AnyCancellable> ()
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubscribers()
    }
    func setupSubscribers() {
        service.$userSession.sink { [weak self ]  userSession in
            self?.userSession = userSession
            
        }
        .store(in: &cancellables)
    }
}


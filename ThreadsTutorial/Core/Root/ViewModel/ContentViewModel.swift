//
//  ContentViewModel.swift
//  ThreadsTutorial
//
//  Created by jinam on 9/12/25.
//

import Foundation
import Combine
import FirebaseAuth

class ContentViewModel: ObservableObject {
    @Published var userSession: FirebaseAuth.User?
    
    init() {
        setupSubcribers()
    }
    
    private func setupSubcribers() {
        AuthService.shared.$userSession.sink { [weak self] userSession in
            self?.userSession = userSession
            
        }
    }
}

//
//  RegistrationViewModel.swift
//  ThreadsTutorial
//
//  Created by jinam on 9/10/25.
//

import Foundation

class RegistrationViewModel: ObservableObject{
    @Published var email = ""
    @Published var password = ""
    @Published var fullname = ""
    @Published var username = ""
    
    @MainActor
    func createUser() async throws {
        try await AuthService()
            .createUser(
                withEmail: email,
                password: password,
                fullname: fullname,
                userName: username
            )
    }
    
}

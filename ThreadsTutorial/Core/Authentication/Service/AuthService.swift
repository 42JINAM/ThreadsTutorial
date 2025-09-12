//
//  AuthService.swift
//  ThreadsTutorial
//
//  Created by jinam on 9/10/25.
//

import FirebaseAuth

class AuthService {
    
    @Published var userSession: FirebaseAuth.User? = nil
    static let shared = AuthService()
    
    init() {
        self.userSession = Auth.auth().currentUser
    }
    
    @MainActor
    func login(withEmail emmail: String, password: String) async throws {
        
    }
    
    @MainActor
    func createUser(withEmail email: String, password: String, fullname: String, userName: String) async throws {
        do {
            let result = try await Auth.auth().createUser(
                withEmail: email,
                password: password
            )
            print("DEBUG: User created with uid: \(result.user.uid)")
        } catch let error {
            print("DEBUG: Error creating user: \(error.localizedDescription)")
        }
        
    }
}

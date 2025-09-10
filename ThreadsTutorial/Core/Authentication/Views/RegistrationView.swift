//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/25/25.
//

import SwiftUI

struct RegistrationView: View {
    
    @StateObject var viewModel = RegistrationViewModel()

    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 80)
            Image("threads-app-icon")
                .threadsMainIconStyle()
            
            VStack {
                TextField("Enter your email", text: $viewModel.email)
                    .modifier(ThreadsTextFieldModifier())
                               
                SecureField("Enter your password", text: $viewModel.password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $viewModel.fullname)
                    .modifier(ThreadsTextFieldModifier())
               
                TextField("Enter your username", text: $viewModel.username)
                    .modifier(ThreadsTextFieldModifier())
                
                Button {
                    Task { try await viewModel.createUser()}
                } label: {
                    Text("Sign Up")
                        .modifier(ThreadsButtonModifier())

                }
                .padding(.vertical)
                Spacer()
                Divider()
                Button {
                    dismiss()
                } label: {
                    HStack(spacing: 3) {
                        Text("Already have an account")
                        Text("Sign in")
                            .fontWeight(.semibold)
                    }
                    .foregroundColor(.black)
                    .font(.footnote)
                }
                .padding(.vertical, 16)
            }
        }
    }
}

#Preview {
    RegistrationView()
}

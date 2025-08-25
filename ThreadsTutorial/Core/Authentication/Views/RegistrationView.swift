//
//  RegistrationView.swift
//  ThreadsTutorial
//
//  Created by jinam on 8/25/25.
//

import SwiftUI

struct RegistrationView: View {
    @State private var email = ""
    @State private var password = ""
    @State private var fullname = ""
    @State private var username = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        VStack {
            Spacer()
                .frame(height: 80)
            Image("threads-app-icon")
                .threadsMainIconStyle()
            
            VStack {
                TextField("Enter your email", text: $email)
                    .modifier(ThreadsTextFieldModifier())
                               
                SecureField("Enter your password", text: $password)
                    .modifier(ThreadsTextFieldModifier())
                
                TextField("Enter your full name", text: $fullname)
                    .modifier(ThreadsTextFieldModifier())
               
                TextField("Enter your username", text: $username)
                    .modifier(ThreadsTextFieldModifier())
                
                Button {
                    dismiss()
                    
                } label: {
                    Text("Sign Up")
                        .modifier(ThreadsButtonModifier())

                }
                .padding(.vertical)
                Spacer()
                Divider()
                Button {
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

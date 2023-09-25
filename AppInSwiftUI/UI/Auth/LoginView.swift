//
//  LoginView.swift
//  AppInSwiftUI
//
//  Created by Jasim Uddin on 19/09/2023.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    var body: some View {
        NavigationStack {
            // Form field
            VStack(spacing: 15) {
                // Mark: Use the InputView
                InputView(text: $email,
                          title: "Email",
                          placeHolder: "Enter your email")
                .autocapitalization(.none)
                InputView(text: $password,
                          title: "Password",
                          placeHolder: "Enter your password",
                          isSecureField: true)
            }
            .padding()
            // Password reset
            NavigationLink() {
                // Mark: Navigate to password reset page
                PasswordReset()
            } label: {
                HStack(spacing: 3) {
                    Text("Forgot password?")
                        .bold()
                        .padding(.leading, 180)
            }
            }
            
            // Mark: Sign In button
            Button {
                // Add action
            } label: {
                Text("Sign In")
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width-30, height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)
            }
            // Mark: Navigate to SignUp
                NavigationLink {
                    Registration()
                } label: {
                    HStack(spacing: 3) {
                        Text("Don't have account?")
                        Text("Sign Up")
                            .bold()
                }
                }
            .padding()
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

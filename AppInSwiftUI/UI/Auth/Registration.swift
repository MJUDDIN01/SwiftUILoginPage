//
//  Registration.swift
//  AppInSwiftUI
//
//  Created by Jasim Uddin on 25/09/2023.
//

import SwiftUI

struct Registration: View {
    @State private var email = ""
    @State private var fullName = ""
    @State private var password = ""
    @State private var confirmPassword = ""
    @Environment(\.dismiss) var dismiss
    var body: some View {
        // Form field
        VStack(spacing: 15) {
            InputView(text: $fullName,
                      title: "Full Name",
                      placeHolder: "Enter your name")
            InputView(text: $email,
                      title: "Email",
                      placeHolder: "Enter your email")
            .autocapitalization(.none)
            InputView(text: $password,
                      title: "Password",
                      placeHolder: "Enter your password",
                      isSecureField: true)
            InputView(text: $confirmPassword,
                      title: "Confirm Password",
                      placeHolder: "Enter password again",
                      isSecureField: true)
            // Sign Up button
            Button {
            } label: {
                Text("Sign Up")
                    .padding()
                    .foregroundColor(Color.white)
                    .frame(width: UIScreen.main.bounds.width-30, height: 50)
                    .background(Color.blue)
                    .cornerRadius(25)

            }
            // Navigate to sign In page
            Button {
                dismiss()
            } label: {
                HStack(spacing: 3) {
                    Text("Already have account?")
                    Text("Sign In")
                        .bold()
            }
            }

        }
        .navigationBarBackButtonHidden(true)
        .padding()
    }
}

struct Registration_Previews: PreviewProvider {
    static var previews: some View {
        Registration()
    }
}

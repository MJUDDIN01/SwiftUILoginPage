//
//  ContentView.swift
//  AppInSwiftUI
//
//  Created by Jasim Uddin on 12/09/2023.
//

import SwiftUI

struct ContentView: View {
    @State var email = ""
    @State var password = ""
    var body: some View {
        NavigationView {
            VStack(spacing: 15) {
                TextField("E-mail", text: self.$email)
                    .autocapitalization(.none).textContentType(.emailAddress)
                Rectangle().frame(height: 1).foregroundColor(Color.gray)
                SecureField("Password", text: self.$password).padding(.top, 10)
                Rectangle().frame(height: 1).foregroundColor(Color.gray)
                Button {
                    // No action yet
                } label: {
                    Text("Sign In")
                        .padding()
                        .foregroundColor(Color.white)
                        .frame(width: 300, height: 50)
                        .background(Color.indigo)
                        .cornerRadius(25)
                }
                Text("Forgot the password?")

                                }
            .padding(.leading, 10)
            .navigationTitle("Sign In")
        }
        VStack {
            HStack {
                Text("Don't have account?")
                Link("Create here", destination: URL(string:"https://www.google.co.uk/")!)
            }
            
        }
    }
}


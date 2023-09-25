//
//  InputView.swift
//  AppInSwiftUI
//
//  Created by Jasim Uddin on 19/09/2023.
//

import SwiftUI

struct InputView: View {
    @Binding var text: String
    let title: String
    let placeHolder: String
    var isSecureField = false
    
    var body: some View {
        // Mark: Create common components to reuse
        VStack(alignment: .leading, spacing: 15) {
            Text(title)
                .foregroundColor(Color(.darkGray))
            if isSecureField {
                SecureField(placeHolder, text: $text)
                    .font(.system(size: 15))
            } else {
                TextField(placeHolder, text: $text)
                    .font(.system(size: 15))
            }
            Divider()
        }
    }
}

struct InputView_Previews: PreviewProvider {
    static var previews: some View {
        InputView(text: .constant(""), title: "Email", placeHolder: "Enter your email")
    }
}

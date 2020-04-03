//
//  LoginView.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var showContacts = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 26) {
            Text("Log In")
                .modifier(TitleText())
            
            ErrorTextField(title: "Email", placeholder: "mail@example.com", iconName: "email", text: $email, keyboardType: .emailAddress, isValid: isValid)
            
            Spacer()
            
            Button(action: login) {
                PrimaryButton(title: "Log In")
            }
            
            NavigationLink(destination: ContactsView(), isActive: $showContacts) {
                EmptyView()
            }
        }
        .padding()
    }
    
    
    private func isValid(email: String) -> Bool {
        let regex     = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", regex)
        return predicate.evaluate(with: email)
    }
    
    
    private func login() {
        
        showContacts = true
    }
    
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}

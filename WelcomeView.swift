//
//  WelcomeView.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Connect with people around the world")
                .modifier(TitleText())
                .padding([.bottom, .leading, .trailing])
            
            VStack(alignment: .center) {
                Image("welcome")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .padding(.bottom, 35)
                    .padding([.leading, .trailing], 80)
                
                Text("""
                    This is a sample app.
                    Create an account or login to begin chatting.
                    """)
                .modifier(BodyText())
                    .multilineTextAlignment(.center)
                    .padding([.leading, .trailing], 40)
            }
            
            VStack(spacing: 30) {
                NavigationLink(destination: LoginView()) {
                    PrimaryButton(title: "Log In")
                }
                
                Button(action: { }) {
                    SecondaryButton(title: "Sign Up")
                }
            }
            .padding([.leading, .bottom, .trailing])
            .padding(.top, 40)
            
            Spacer()
        }
        .navigationBarTitle("Create an account")
    }
}

struct WelcomeView_Previews: PreviewProvider {
    static var previews: some View {
        WelcomeView()
    }
}

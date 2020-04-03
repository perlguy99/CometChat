//
//  AvatarView.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import SwiftUI

struct AvatarView: View {
    let url: URL?
    let isOnline: Bool
    
    private let showsOnlineStatus: Bool
    
    init(url: URL?, isOnline: Bool) {
        self.url = url
        self.isOnline = isOnline
        showsOnlineStatus = true
    }
    
    init(url: URL?) {
        self.url = url
        self.isOnline = false
        showsOnlineStatus = false
    }
    
    var body: some View {
        ZStack {
            Image("avatar_placeholder0")
                .resizable()
                .frame(width: 37, height: 37)
            
            if showsOnlineStatus {
            Circle()
                .frame(width: 10, height: 10)
                .foregroundColor(isOnline ? .green : .gray)
                .padding([.leading, .top], 25)
        
            }
        }
    }
}

//struct AvatarView_Previews: PreviewProvider {
//    static var previews: some View {
//        AvatarView()
//    }
//}

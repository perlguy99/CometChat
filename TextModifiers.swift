//
//  TextModifiers.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import SwiftUI

struct TitleText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(Font.largeTitle.weight(.bold))
            .foregroundColor(.cometChatBlue)
    }
}


struct BodyText: ViewModifier {
    func body(content: Content) -> some View {
        content
            .foregroundColor(.body)
    }
}

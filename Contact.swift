//
//  Contact.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import Foundation

struct Contact: Identifiable, Equatable {
    let name: String
    let avatar: URL?
    let id: String
    let isOnline: Bool
}

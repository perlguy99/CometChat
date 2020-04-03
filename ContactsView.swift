//
//  ContactsView.swift
//  CometChat
//
//  Created by Michalski (US), James B on 4/3/20.
//  Copyright © 2020 Perlguy, Inc. All rights reserved.
//

import SwiftUI

struct ContactsView: View {
    @State private var items: [ContactRow.ContactItem] = [
    .init(
        contact: Contact(name: "Some Name", avatar: nil, id: "0", isOnline: true),
        lastMessage: "This is my last message that I sent you",
        unread: true),

    .init(
        contact: Contact(name: "Other Name", avatar: nil, id: "1", isOnline: false),
        lastMessage: "This is my last message that I sent you",
        unread: false),

    .init(
        contact: Contact(name: "Third Name", avatar: nil, id: "2", isOnline: true),
        lastMessage: "This is my last message that I sent you",
        unread: false),
    ]
    
    
    init() {
        UITableView.appearance().tableFooterView = UIView()
        UITableView.appearance().separatorStyle = .none
    }
    
    var body: some View {
//        List(items) { item in
//            ContactRow(item: item)
//        }
        
        List {
            ForEach(0..<items.count, id: \.self) { i in
                ContactRow(item: self.items[i])
                    .listRowInsets(EdgeInsets())
                    .background(Color.white)
                    .shadow(color: i == self.items.count - 1 ? Color(UIColor.black.withAlphaComponent(0.08)) : Color.clear, radius: 10, x: 0, y: 2)
                
            }
        }
        .navigationBarTitle("Contacts", displayMode: .inline)
        
        
    }
}

struct ContactsView_Previews: PreviewProvider {
    static var previews: some View {
        ContactsView()
    }
}

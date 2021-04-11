//
//  VCChatView.swift
//  DSU
//
//  Created by Andreas on 2/21/21.
//

import SwiftUI

struct VCChatView: View {
    let columns = [
            GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80))
        ]
@State var usersInVC = [User(name: "Andreas", date: Date(), posts: [Post]()), User(name: "Andreas", date: Date(), posts: [Post]())]
    var body: some View {
        LazyVGrid(columns: columns, spacing: 10) {
            ForEach(usersInVC, id: \.self) { item in
                
            }
        }
    }
}

struct VCChatView_Previews: PreviewProvider {
    static var previews: some View {
        VCChatView()
    }
}

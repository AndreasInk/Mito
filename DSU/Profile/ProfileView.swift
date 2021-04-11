//
//  ProfileView.swift
//  DSU
//
//  Created by Andreas on 2/21/21.
//

import SwiftUI

struct ProfileView: View {
    @State var user: User
    let columns = [
            GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80)),
        GridItem(.adaptive(minimum: 80))
        ]
    @State var show = false
    var body: some View {
        
        VStack {
           
                Image(uiImage: UIImage(data: (user.profileImage ?? UIImage(named: "test")?.pngData())!)!)
                    .resizable()
                    .scaledToFit()
                    .clipShape(Circle())
                Text(user.name)
                    .font(.headline)
                Text(user.bio ?? "")
                    .font(.subheadline)
            ScrollView {
            LazyVGrid(columns: columns, spacing: 0) {
                ForEach(user.posts, id: \.self) { post in
                    Button(action: {
                        show = true
                    }) {
                       
                    Image(uiImage: UIImage(data: (post.image ?? UIImage(named: "test")?.pngData())!)!)
                        .resizable()
                        .scaledToFit()
                        .padding()
                    }
                        .sheet(isPresented: $show, content: {
                            PostView(post: post)
                        })
                }
            }
            }
            Spacer()
        }
    }
}



//
//  PublicPosts.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation

struct PublicPosts {
    
    static let currentUser: User = User(userName: "Rachel Qian", photoID: "Rachel")
    
    static let sampleData : [Post] = [
        Post(photoID: "picture1", description: "Travel memories...", author: PublicPosts.currentUser),
        Post(photoID: "picture2", description: "What I created last summer.", author: User(userName: "Jane M.", photoID: "Jane")),
        Post(photoID: "picture3", description: "Another creation", author: PublicPosts.currentUser),
        Post(photoID: "picture4", description: "Another great creation", author: PublicPosts.currentUser),
        Post(photoID: "picture5", description: "Another great creation", author: PublicPosts.currentUser),
        Post(photoID: "picture6", description: "Another great creation of Iris", author: User(userName: "Iris K.", photoID: "Iris"))
    ]
}


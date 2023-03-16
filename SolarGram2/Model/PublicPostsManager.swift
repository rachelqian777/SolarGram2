//
//  PublicPosts.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation

struct PublicPostsManager {
    
    let currentUser: User = User(userName: "Rachel Qian", photoID: "Rachel")
    
    var sampleData : [Post] = [
        Post(photoID: "picture1", description: "Travel memories...", author: PublicPostsManager.currentUser),
        Post(photoID: "picture2", description: "What I created last summer.", author: User(userName: "Jane M.", photoID: "Jane")),
        Post(photoID: "picture3", description: "Another creation", author: PublicPostsManager.currentUser),
        Post(photoID: "picture4", description: "Another great creation", author: PublicPostsManager.currentUser),
        Post(photoID: "picture5", description: "Another great creation", author: PublicPostsManager.currentUser),
        Post(photoID: "picture6", description: "Another great creation of Iris", author: User(userName: "Iris K.", photoID: "Iris"))
    ]
    
    mutating func toggleFavorite(_ post: Post) {
        let postInedx = sampleData.firstIndex { p in
            p.id == post.id
        }
        
        guard let actualIndex = postInedx else { return }
        
        sampleData[actualIndex].isFavorite.toggle()
    }
}


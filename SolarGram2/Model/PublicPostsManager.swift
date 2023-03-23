//
//  PublicPosts.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation
import SwiftUI

struct PublicPostsManager {
    
    static let currentUser: User = User(userName: "Rachel Qian", photoID: "Rachel")
    
    var sampleData : [Post] = [
        Post(image: Image("picture1"), description: "Travel memories...", author: PublicPostsManager.currentUser),
        Post(image: Image("picture2"), description: "What I created last summer.", author: User(userName: "Jane M.", photoID: "Jane")),
        Post(image: Image("picture3"), description: "Another creation", author: PublicPostsManager.currentUser),
        Post(image: Image("picture4"), description: "Another great creation", author: PublicPostsManager.currentUser),
        Post(image: Image("picture5"), description: "Another great creation", author: PublicPostsManager.currentUser),
        Post(image: Image("picture6"), description: "Another great creation of Iris", author: User(userName: "Iris K.", photoID: "Iris")),
        Post(image: Image("picture7"), description: "Travel memories...", author: PublicPostsManager.currentUser)
    ]
    
    mutating func toggleFavorite(_ post: Post) {
        let postInedx = sampleData.firstIndex { p in
            p.id == post.id
        }
        
        guard let actualIndex = postInedx else { return }
        
        sampleData[actualIndex].isFavorite.toggle()
    }
    
    mutating func add(_ post: Post) {
        sampleData.append(post)
    }
    
    //    Need a function that removes a specific post from the sampleData array
    mutating func delete(_ post: Post) {
        let postIndex = sampleData.firstIndex { p in
            p.id == post.id
        }
        guard let actualIndex = postIndex else { return }
        sampleData.remove(at: actualIndex)
        
    }
}

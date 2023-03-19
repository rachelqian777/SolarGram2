//
//  PublicPostsViewModel.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/14/23.
//

import Foundation
import SwiftUI

class PublicPostsViewModel: ObservableObject {
    
    @Published private var model: PublicPostsManager = PublicPostsManager()
    
    var publicPosts: [Post] {
        model.sampleData
    }
    
    func setPostFavorite (post: Post) {
        model.toggleFavorite(post)
    }
    
//    var currentUser: User {
//        PublicPostsViewModel.currentUser
//    }
//
    var currentUserPosts: [Post] {
        return model.sampleData.filter { post in
            post.author.id == PublicPostsManager.currentUser.id
        }
    }
    
}

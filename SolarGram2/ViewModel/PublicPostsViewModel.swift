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
    
    func addPostFrom(image: UIImage?) {

        // make sure the optional is an actual image
        guard let image else {return}
        
        // you must do this on main thread for UI to update properly
        DispatchQueue.main.async {
            // create a new post object, it might look like this, but you can adapt as needed in your project.
            let newPost = Post(image: Image(uiImage: image), description: "Something New", isFavorite: false, author: PublicPostsManager.currentUser)

            // call some function on the model to add the new post to the array of posts, you can do this how you like, but the logic should be in the model
            self.model.add(newPost)
        }
    }
    
}

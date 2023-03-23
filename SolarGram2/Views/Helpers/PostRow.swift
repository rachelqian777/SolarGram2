//
//  PostRow.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation
import SwiftUI

struct PostRow: View {
    var post: Post
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    //    let myPosts = viewModel.publicPosts.filter { post in
    //        post.author.id == viewModel.currentUser.id
    //    }
    
    var body : some View {
        VStack(alignment: .leading) {
            postHeader
            SquarePicture(post.image)
            postDetails
            likeButton
        }
    }
    
    var postHeader: some View {
        HStack {
            HStack{
                Image(post.author.photoID)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 30, height: 30)
                    .cornerRadius(50)
                Text(post.author.userName)
                    .font(.body)
                    .fontWeight(.bold)
            }
            Spacer()
            
            if post.author == PublicPostsManager.currentUser {
                deleteButton
            }
        }
        .padding(.vertical, 4)
        .padding(.horizontal, 8)
    }
    
    var postDetails: some View {
        VStack {
            HStack{
                Text(post.description)
                Spacer()
            }
            .padding(.leading)
            
        }
    }
    
    var likeButton: some View {
        HStack {
            Button {
                viewModel.setPostFavorite(post: post)
            } label: {
                if post.isFavorite {
                    Image(systemName: "heart.fill")
                } else {
                    Image(systemName: "heart")
                }
            }
        }
        .padding(.leading, 16)
    }
    
    var deleteButton: some View {
        HStack {
            Button {
                //a function that remove the specific post from the sampleDatat array
                viewModel.deletePost(post: post)
            } label: {
                Text("delete")
            }
        }
        .padding(.leading, 16)
    }
    

}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: PublicPostsViewModel().publicPosts[0])
            .environmentObject(PublicPostsViewModel())
    }
}

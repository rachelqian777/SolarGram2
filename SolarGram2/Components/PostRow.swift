//
//  PostRow.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation
import SwiftUI

struct PostRow: View {
    @Binding var post: Post
    
    var body : some View {
        VStack(alignment: .leading) {
            postHeader
            SquarePicture(Image(post.photoID))
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
                post.isFavorite.toggle()
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
    

}

struct PostRow_Previews: PreviewProvider {
    static var previews: some View {
        PostRow(post: .constant(PublicPosts.sampleData[0]))
    }
}

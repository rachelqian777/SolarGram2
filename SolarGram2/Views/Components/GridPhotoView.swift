//
//  GridPhotoView.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/12/23.
//

import Foundation
import SwiftUI

struct GridPhotoView: View {
    var posts: [Post]
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
    var body: some View {
        GeometryReader {geo in
            ScrollView {
                LazyVGrid (columns: [GridItem(.adaptive(minimum:geo.size.width/4))]) {
                    ForEach(posts) {post in
                        SquarePicture(Image(post.photoID))
                    }
                }
            }
        }
    }
}

struct GridPhotoView_Previews: PreviewProvider {
    static var previews: some View {
        GridPhotoView(posts: PublicPostsViewModel().publicPosts)
            .environmentObject(PublicPostsViewModel())
    }
}

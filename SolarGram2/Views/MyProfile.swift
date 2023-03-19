//
//  MyProfile.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct MyProfile: View {
    
    @EnvironmentObject var viewModel: PublicPostsViewModel
    
//    let posts = viewModel.publicPosts.filter { post in
//        post.author.id == viewModel.currentUser.id
//    }
    
   
    
    var body: some View {
        VStack{
            headerView
            GridPhotoView(posts: viewModel.currentUserPosts)
        }
    }
    
    var headerView: some View {
        VStack {
            Image(PublicPostsManager.currentUser.photoID)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
            Text (PublicPostsManager.currentUser.userName)
                .font(.title)
        }
    }
    
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
            .environmentObject(PublicPostsViewModel())
        
    }
}


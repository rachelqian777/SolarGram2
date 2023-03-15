//
//  MyProfile.swift
//  SolarGram2
//
//  Created by Rachel Qian on 3/4/23.
//

import Foundation
import SwiftUI

struct MyProfile: View {
    
    let posts = PublicPosts.sampleData.filter { post in
        post.author.id == PublicPosts.currentUser.id
    }
    
   
    
    var body: some View {
        VStack{
            headerView
            GridPhotoView(posts: posts)
        }
    }
    
    var headerView: some View {
        VStack {
            Image(PublicPosts.currentUser.photoID)
                .resizable()
                .frame(width: 100, height: 100)
                .cornerRadius(50)
            Text (PublicPosts.currentUser.userName)
                .font(.title)
        }
    }
    
}


struct MyProfile_Previews: PreviewProvider {
    static var previews: some View {
        MyProfile()
        
    }
}

